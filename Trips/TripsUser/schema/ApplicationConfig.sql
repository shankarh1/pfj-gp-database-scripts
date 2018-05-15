-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create ApplicationConfig table
-- =============================================


CREATE TABLE "TripsUser"."ApplicationConfig"(
	"ApplicationConfigId" serial NOT NULL,
	"ApplicationId" integer NOT NULL,
	"ConfigKey" varchar(50) NOT NULL,
	"ConfigValue" text NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."ApplicationConfig" ADD CONSTRAINT "PK_ApplicationConfig" PRIMARY KEY("ApplicationConfigId");

ALTER TABLE "TripsUser"."ApplicationConfig" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TripsUser"."ApplicationConfig" ADD CONSTRAINT "FK_ApplicationConfig_Application" FOREIGN KEY("ApplicationId") REFERENCES "TripsUser"."Application" ("ApplicationId")
ON UPDATE CASCADE
ON DELETE CASCADE;

