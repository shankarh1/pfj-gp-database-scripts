-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgRegion table
-- =============================================


CREATE TABLE "Staging"."StgRegion"(
	"RegionSystemId" varchar(100) NULL,
	"ZoneSystemId" varchar(100) NULL,
	"Region" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"RegionDescription" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"RegionSupervisorId" varchar(100) NULL,
	"RegionCoordinator" varchar(100) NULL,
	"TripsRegionDescription" varchar(100) NULL,
	"EmailDistributionGroup" varchar(100) NULL,
	"LawsonObjId" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgRegion" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

