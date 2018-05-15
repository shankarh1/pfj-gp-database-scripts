-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create RoleModuleMapping table
-- =============================================


CREATE TABLE "TripsUser"."RoleModuleMapping"(
	"RoleModuleMappingId" serial NOT NULL,
	"RoleId" integer NOT NULL,
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

ALTER TABLE "TripsUser"."RoleModuleMapping" ADD CONSTRAINT "PK_RoleModuleMapping" PRIMARY KEY("RoleModuleMappingId");

ALTER TABLE "TripsUser"."RoleModuleMapping" ALTER COLUMN "HasReadPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."RoleModuleMapping" ALTER COLUMN "HasAddPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."RoleModuleMapping" ALTER COLUMN "HasEditPermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."RoleModuleMapping" ALTER COLUMN "HasDeletePermission" SET DEFAULT false;

ALTER TABLE "TripsUser"."RoleModuleMapping" ADD CONSTRAINT "FK_RoleModuleMapping_Module" FOREIGN KEY("ModuleId") REFERENCES "TripsUser"."Module" ("ModuleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsUser"."RoleModuleMapping" ADD CONSTRAINT "FK_RoleModuleMapping_Role" FOREIGN KEY("RoleId") REFERENCES "TripsUser"."Role" ("RoleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

