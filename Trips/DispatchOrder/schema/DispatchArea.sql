-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DispatchArea table
-- =============================================


CREATE TABLE "DispatchOrder"."DispatchArea"(
	"DispatchAreaId" serial NOT NULL,
	"LegacyDispatchAreaId" integer NULL,
	"TimeZoneId" integer NULL,
	"Name" varchar(100) NULL,
	"IsActive" boolean  NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."DispatchArea" ADD CONSTRAINT "DispatchAreaId" PRIMARY KEY("DispatchAreaId");

ALTER TABLE "DispatchOrder"."DispatchArea" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DispatchArea" ADD CONSTRAINT "FK_DispatchArea_TimeZone" FOREIGN KEY("TimeZoneId") REFERENCES "DispatchOrder"."TimeZone" ("TimeZoneId")
ON UPDATE CASCADE
ON DELETE CASCADE;


