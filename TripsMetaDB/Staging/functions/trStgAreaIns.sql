-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-13
-- Description: Create trigger function for StgArea
-- =============================================


CREATE OR REPLACE FUNCTION Staging.trStgAreaIns()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

BEGIN

		IF EXISTS (SELECT 1 FROM TripsMetaDB.PandLArea WHERE PandLAreaId = NEW.PandLAreaSystemId::int)
			THEN
				/* Update existing record in TripsMetaDB */
				UPDATE TripsMetaDB.PandLArea SET
					RegionId = NEW.RegionSystemId::int,
					TimeZoneId = NEW.TimeZoneId::int,
					PandLArea = NEW.PandLArea,
					Description = NEW.PandLAreaDescription,
					Comment = NEW.Comment,
					IsActive = NEW.IsActive::bit,
					State = NEW.StateId,
					Country = NEW.LocationCountry,
					LastUpdatedBy = 2,
					LastUpdatedDateTime = NOW()
				WHERE PandLAreaId = NEW.PandLAreaSystemId::int;
				
				/* Update existing record in DispatchOrder */
				UPDATE DispatchOrder.PandLArea SET
					RegionId = NEW.RegionSystemId::int,
					TimeZoneId = NEW.TimeZoneId::int,
					PandLArea = NEW.PandLArea,
					Description = NEW.PandLAreaDescription,
					Comment = NEW.Comment,
					IsActive = NEW.IsActive::bit,
					State = NEW.StateId,
					Country = NEW.LocationCountry,
					LastUpdatedBy = 2,
					LastUpdatedDateTime = NOW()
				WHERE PandLAreaId = NEW.PandLAreaSystemId::int;
			END IF;

		IF EXISTS (SELECT NEW.PandLAreaSystemId::int WHERE NEW.PandLAreaSystemId::int NOT IN(SELECT PandLAreaId FROM TripsMetaDB.PandLArea))
			THEN
				/* Insert a new record in TripsMetaDB */
					INSERT INTO TripsMetaDB.PandLArea(
						PandLAreaId,
						RegionId,
						TimeZoneId,
						PandLArea,
						Description,
						Comment,
						IsActive,
						State,
						Country,
						CreatedBy,
						CreatedDateTime)

					SELECT NEW.PandLAreaSystemId::int,
						NEW.RegionSystemId::int,
						NEW.TimeZoneId::int,
						NEW.PandLArea,
						NEW.PandLAreaDescription,
						NEW.Comment,
						NEW.IsActive::bit,
						NEW.StateId,
						NEW.LocationCountry,
						2,
						NOW()
					WHERE NEW.PandLAreaSystemId::int NOT IN(SELECT PandLAreaId FROM TripsMetaDB.PandLArea);
					
					/* Insert a new record in DispatchOrder */
					INSERT INTO DispatchOrder.PandLArea(
						PandLAreaId,
						RegionId,
						TimeZoneId,
						PandLArea,
						Description,
						Comment,
						IsActive,
						State,
						Country,
						CreatedBy,
						CreatedDateTime)

					SELECT 
						NEW.PandLAreaSystemId::int,
						NEW.RegionSystemId::int,
						NEW.TimeZoneId::int,
						NEW.PandLArea,
						NEW.PandLAreaDescription,
						NEW.Comment,
						NEW.IsActive::bit,
						NEW.StateId,
						NEW.LocationCountry,
						2,
						NOW()
					WHERE NEW.PandLAreaSystemId::int NOT IN(SELECT PandLAreaId FROM DispatchOrder.PandLArea);
	   			END IF;
					RETURN NEW;

END

$BODY$;

ALTER FUNCTION staging.trstgareains()
    OWNER TO postgres;

