-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create StgVrInventory table
-- =============================================


CREATE TABLE "TankInventory"."StgVrInventory"(
	"SystemVrInventory" serial NOT NULL,
	"DeviceNumber" integer NOT NULL,
	"Height" decimal(18, 4) NOT NULL,
	"Product" varchar(50) NOT NULL,
	"RowState" varchar(50) NOT NULL,
	"TCVolume" decimal(18, 4) NOT NULL,
	"TankNumber" integer NOT NULL,
	"Temperature" decimal(18, 4) NOT NULL,
	"Ullage" decimal(18, 4) NOT NULL,
	"Volume" decimal(18, 4) NOT NULL,
	"Water" decimal(18, 4) NOT NULL,
	"StoreNumber" integer NULL,
	"BatchId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankInventory"."StgVrInventory" ADD CONSTRAINT "PK_StgVrInventory" PRIMARY KEY("SystemVrInventory");

ALTER TABLE "TankInventory"."StgVrInventory" ALTER COLUMN "CreatedBy" SET DEFAULT 1;

ALTER TABLE "TankInventory"."StgVrInventory" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "TankInventory"."StgVrInventory" ADD CONSTRAINT "FK_StgVrInventory_InventoryBatchProcess" FOREIGN KEY("BatchId")
REFERENCES "TankInventory"."InventoryBatchProcess" ("BatchId");

