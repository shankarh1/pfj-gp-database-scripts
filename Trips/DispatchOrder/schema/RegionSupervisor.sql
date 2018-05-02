-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create RegionSupervisor table
-- =============================================


CREATE TABLE "DispatchOrder"."RegionSupervisor"(
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

ALTER TABLE "DispatchOrder"."RegionSupervisor" ADD CONSTRAINT "PK_RegionSupervisor" PRIMARY KEY("RegionSupervisorId");

ALTER TABLE "DispatchOrder"."RegionSupervisor" ALTER COLUMN "IsActive" SET DEFAULT false;

