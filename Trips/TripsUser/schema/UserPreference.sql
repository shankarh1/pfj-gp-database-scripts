-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create UserPreference table
-- =============================================


CREATE TABLE "TripsUser"."UserPreference"(
	"UserPreferenceId" serial NOT NULL,
	"UserId" integer NOT NULL,
	"ModuleId" integer NOT NULL,
	"UserPreferenceJson" text NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."UserPreference" ADD CONSTRAINT "PK_UserPreference" PRIMARY KEY("UserPreferenceId");

ALTER TABLE "TripsUser"."UserPreference" ADD CONSTRAINT "FK_UserPreference_Module" FOREIGN KEY("ModuleId") REFERENCES "TripsUser"."Module" ("ModuleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsUser"."UserPreference" ADD CONSTRAINT "FK_UserPreference_User" FOREIGN KEY("UserId") REFERENCES "TripsUser"."User" ("UserId")
ON UPDATE CASCADE
ON DELETE CASCADE;

