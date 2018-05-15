-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create UserModuleMapping table
-- =============================================


CREATE TABLE "TripsUser"."UserModuleMapping"(
	"UserModuleMappingId" serial NOT NULL,
	"UserId" integer NOT NULL,
	"ModuleId" integer NOT NULL,
	"HasReadPermission" boolean NOT NULL,
	"HasAddPermission" boolean NOT NULL,
	"HasEditPermission" boolean NOT NULL,
	"HasDeletePermission" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."UserModuleMapping" ADD CONSTRAINT "PK_UserModuleMapping" PRIMARY KEY("UserModuleMappingId");

ALTER TABLE "TripsUser"."UserModuleMapping" ALTER COLUMN "HasReadPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."UserModuleMapping" ALTER COLUMN "HasAddPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."UserModuleMapping" ALTER COLUMN "HasEditPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."UserModuleMapping" ALTER COLUMN "HasDeletePermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."UserModuleMapping" ADD CONSTRAINT "FK_UserModuleMapping_Module" FOREIGN KEY("ModuleId") REFERENCES "TripsUser"."Module" ("ModuleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsUser"."UserModuleMapping" ADD CONSTRAINT "FK_UserModuleMapping_User" FOREIGN KEY("UserId") REFERENCES "TripsUser"."User" ("UserId")
ON UPDATE CASCADE
ON DELETE CASCADE;

