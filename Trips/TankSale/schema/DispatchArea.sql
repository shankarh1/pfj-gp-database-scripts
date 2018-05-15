-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create DispatchArea table
-- =============================================


CREATE TABLE "TankSale"."DispatchArea"(
	"DispatchAreaId" serial NOT NULL,
	"LegacyDispatchAreaId" integer NULL,
	"TimeZoneId" integer NULL,
	"Name" varchar(100) NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankSale"."DispatchArea" ADD CONSTRAINT "PK_DispatchArea" PRIMARY KEY("DispatchAreaId");

ALTER TABLE "TankSale"."DispatchArea" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TankSale"."DispatchArea" ADD CONSTRAINT "FK_DispatchArea_TimeZone" FOREIGN KEY("TimeZoneId") REFERENCES "TankSale"."TimeZone" ("TimeZoneId")
ON UPDATE CASCADE
ON DELETE CASCADE;

