-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create InventoryBatchProcess table
-- =============================================


CREATE TABLE "TankInventory"."InventoryBatchProcess"(
	"BatchId" serial NOT NULL,
	"FileName" varchar(200) NULL,
	"RecordCount" integer NOT NULL,
	"BatchStartBy" timestamp(6) NOT NULL,
	"BatchEndBy" timestamp(6) NULL,
	"InventoryTypeId" integer NULL,
	"IgnoreBatch" boolean NOT NULL,
	"IsBatchComplete" boolean NOT NULL,
	"IsInventoryProcessed" boolean NULL,
	"IsInventoryCurrentProcessed" boolean NULL
);

ALTER TABLE "TankInventory"."InventoryBatchProcess" ADD CONSTRAINT "PK_InventoryBatchProcess" PRIMARY KEY("BatchId");

ALTER TABLE "TankInventory"."InventoryBatchProcess" ALTER COLUMN "IsBatchComplete" SET DEFAULT false;

ALTER TABLE "TankInventory"."InventoryBatchProcess" ALTER COLUMN "IgnoreBatch" SET DEFAULT true;

ALTER TABLE "TankInventory"."InventoryBatchProcess" ALTER COLUMN "IsInventoryProcessed" SET DEFAULT false;

ALTER TABLE "TankInventory"."InventoryBatchProcess" ALTER COLUMN "IsInventoryCurrentProcessed" SET DEFAULT false;

