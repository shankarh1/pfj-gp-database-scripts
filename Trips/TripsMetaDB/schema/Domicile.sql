-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Domicile table
-- =============================================


CREATE TABLE "TripsMetaDB"."Domicile"(
	"DomicileId" serial NOT NULL,
	"DomicileTypeId" integer NULL,
	"TimeZoneId" integer NULL,
	"FleetLocationId" integer NULL,
	"DomicileName" varchar(100) NULL,
	"Address1" varchar(300) NULL,
	"Address2" varchar(300) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"ZipCode" varchar(15) NULL,
	"Latitude" varchar(50) NULL,
	"Longitude" varchar(50) NULL,
	"IsDeleted" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Domicile" ADD CONSTRAINT "PK_Domicile" PRIMARY KEY("DomicileId");

ALTER TABLE "TripsMetaDB"."Domicile" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."Domicile" ADD CONSTRAINT "FK_Domicile_DomicileType" FOREIGN KEY("DomicileTypeId")
REFERENCES "TripsMetaDB"."DomicileType" ("DomicileTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."Domicile" ADD CONSTRAINT "FK_Domicile_TimeZone" FOREIGN KEY("TimeZoneId")
REFERENCES "TripsMetaDB"."TimeZone" ("TimeZoneId")
ON UPDATE CASCADE
ON DELETE CASCADE;

