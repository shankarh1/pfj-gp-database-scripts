-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create ShipTo table
-- =============================================


CREATE TABLE "DispatchOrder"."ShipTo"(
	"ShipToId" serial NOT NULL,
	"LegacyShipToId" integer NULL,
	"ShipToTypeId" integer NULL,
	"StoreId" integer NULL,
	"CustomerId" integer NULL,
	"TerminalId" integer NULL,
	"FleetLocationId" integer NULL,
	"Name" text NULL,
	"PrimaryPhone" varchar(50) NULL,
	"SecondaryPhone" varchar(50) NULL,
	"Email" varchar(50) NULL,
	"Fax" varchar(50) NULL,
	"Address1" varchar(500) NULL,
	"Address2" varchar(500) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"ZipCode" varchar(10) NULL,
	"Latitude" numeric(18, 8) NULL,
	"Longitude" numeric(18, 8) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."ShipTo" ADD CONSTRAINT "PK_ShipTo" PRIMARY KEY("ShipToId");

ALTER TABLE "DispatchOrder"."ShipTo" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."ShipTo" ADD CONSTRAINT "FK_ShipTo_ShipToType" FOREIGN KEY("ShipToTypeId")
REFERENCES "DispatchOrder"."ShipToType" ("ShipToTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

