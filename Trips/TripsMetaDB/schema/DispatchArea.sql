-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DispatchArea table
-- =============================================


CREATE TABLE "TripsMetaDB"."DispatchArea"(
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

ALTER TABLE "TripsMetaDB"."DispatchArea" ADD CONSTRAINT "DispatchAreaId" PRIMARY KEY("DispatchAreaId");

ALTER TABLE "TripsMetaDB"."DispatchArea" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."DispatchArea" ADD CONSTRAINT "FK_DispatchArea_TimeZone" FOREIGN KEY("TimeZoneId") REFERENCES "TripsMetaDB"."TimeZone" ("TimeZoneId")
ON UPDATE CASCADE
ON DELETE CASCADE;

