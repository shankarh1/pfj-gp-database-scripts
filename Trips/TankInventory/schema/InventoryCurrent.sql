-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create InventoryCurrent table
-- =============================================


CREATE TABLE "TankInventory"."InventoryCurrent"(
	"InventoryCurrentId" serial NOT NULL,
	"TankId" integer NOT NULL,
	"InventoryDateTime" timestamp(6) NOT NULL,
	"InventoryDate" date NOT NULL,
	"InventoryHour" integer NOT NULL,
	"GrossVolume" decimal(18, 4) NULL,
	"NetVolume" decimal(18, 4) NULL,
	"Height" decimal(18, 4) NULL,
	"Temperature" decimal(18, 2) NULL,
	"Ullage" decimal(18, 4) NULL,
	"GallonsToRunOut" decimal(18, 4) NULL,
	"EstimatedHoursRemaining" decimal(18, 2) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TankInventory"."InventoryCurrent" ADD CONSTRAINT "PK_InventoryCurrent" PRIMARY KEY("InventoryCurrentId");

ALTER TABLE "TankInventory"."InventoryCurrent" ADD CONSTRAINT "FK_InventoryCurrent_Tank" FOREIGN KEY("TankId") REFERENCES "TankInventory"."Tank" ("TankId")
ON UPDATE CASCADE
ON DELETE CASCADE;

