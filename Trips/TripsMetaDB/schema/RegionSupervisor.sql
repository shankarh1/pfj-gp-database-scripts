-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create RegionSupervisor table
-- =============================================


CREATE TABLE "TripsMetaDB"."RegionSupervisor"(
	"RegionSupervisorId" serial NOT NULL,
	"LegacyRegionSupervisorId" integer NULL,
	"EmployeeNumber" integer NULL,
	"FirstName" varchar(50) NULL,
	"LastName" varchar(50) NULL,
	"Email" varchar(50) NULL,
	"VoiceMail" integer NULL,
	"Phone" varchar(15) NULL,
	"Fax" varchar(15) NULL,
	"WirelessAircard" varchar(15) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."RegionSupervisor" ADD CONSTRAINT "PK_RegionSupervisor" PRIMARY KEY("RegionSupervisorId");

