-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create StgWraInventory table
-- =============================================


CREATE TABLE "TankInventory"."StgWraInventory"(
	"CustomerId" varchar(50) NULL,
	"ShipToId" varchar(50) NULL,
	"StoreNumber" varchar(50) NULL,
	"InventoryDate" varchar(50) NULL,
	"InventorySystemDate" varchar(50) NULL,
	"ProductId" varchar(50) NULL,
	"Height" varchar(50) NULL,
	"GrossVolume" varchar(50) NULL,
	"NetVolume" varchar(50) NULL,
	"Temperature" varchar(50) NULL,
	"WraTankId" varchar(50) NULL,
	"EstimatedHoursRemaining" varchar(50) NULL,
	"SystemWraInventoryId" serial NOT NULL,
	"BatchId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankInventory"."StgWraInventory" ADD CONSTRAINT "PK_StgWraInventory" PRIMARY KEY("SystemWraInventoryId");


ALTER TABLE "TankInventory"."StgWraInventory" ALTER COLUMN "CreatedBy" SET DEFAULT 1;

ALTER TABLE "TankInventory"."StgWraInventory" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "TankInventory"."StgWraInventory" ADD CONSTRAINT "FK_StgWraInventory_InventoryBatchProcess" FOREIGN KEY("BatchId") REFERENCES "TankInventory"."InventoryBatchProcess" ("BatchId");

