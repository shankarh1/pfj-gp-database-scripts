-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Tank table
-- =============================================


CREATE TABLE "TankInventory"."Tank"(
	"TankId" serial NOT NULL,
	"LegacyTankId" integer NULL,
	"StoreId" integer NULL,
	"ProductTypeId" integer NULL,
	"WraTankId" varchar(50) NOT NULL,
	"VrTankId" numeric(4, 0) NOT NULL,
	"VrDeviceId" numeric(4, 0) NOT NULL,
	"TankName" varchar(50) NOT NULL,
	"TankCapacityVolume" numeric(10, 0) NOT NULL,
	"MinimumLimit" numeric(10, 0) NULL,
	"RunoutLimit" numeric(10, 0) NOT NULL,
	"OverFillLimit" numeric(10, 0) NOT NULL,
	"ManifoldGroup" varchar(50) NULL,
	"Offset" integer NULL,
	"Haul" boolean NOT NULL,
	"Alert" varchar(50) NULL,
	"AlertDateTime" timestamp(6) NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankInventory"."Tank" ADD CONSTRAINT "PK_Tank" PRIMARY KEY("TankId");

ALTER TABLE "TankInventory"."Tank" ALTER COLUMN "Haul" SET DEFAULT false;

ALTER TABLE "TankInventory"."Tank" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TankInventory"."Tank" ADD CONSTRAINT "FK_Tank_ProductType" FOREIGN KEY("ProductTypeId") REFERENCES "TankInventory"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankInventory"."Tank" ADD CONSTRAINT "FK_Tank_Store" FOREIGN KEY("StoreId") REFERENCES "TankInventory"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

