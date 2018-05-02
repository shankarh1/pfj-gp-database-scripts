-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Region table
-- =============================================


CREATE TABLE "TripsMetaDB"."Region"(
	"RegionId" serial NOT NULL,
	"LegacyRegionId" integer NULL,
	"ZoneId" integer NULL,
	"RegionSupervisorId" integer NULL,
	"MdmDescription" varchar(500) NULL,
	"TripsDescription" varchar(500) NULL,
	"Region" varchar(100) NULL,
	"RegionCoordinator" varchar(500) NULL,
	"EmailDistributionGroup" varchar(500) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Region" ADD CONSTRAINT "PK_Region" PRIMARY KEY("RegionId");

