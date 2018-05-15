-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create StgSsaInventory table
-- =============================================


CREATE TABLE "TankInventory"."StgSsaInventory"(
	"StoreNumber" varchar(50) NULL,
	"City" varchar(50) NULL,
	"Address" varchar(50) NULL,
	"TankId" varchar(50) NULL,
	"FuelTypeId" varchar(50) NULL,
	"FuelType" varchar(50) NULL,
	"Capacity" varchar(50) NULL,
	"FuelVolume" varchar(50) NULL,
	"PollDate" varchar(50) NULL,
	"SystemSsaInventoryId" serial NOT NULL,
	"BatchId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankInventory"."StgSsaInventory" ADD CONSTRAINT "PK_StgSsaInventory" PRIMARY KEY("SystemSsaInventoryId");

ALTER TABLE "TankInventory"."StgSsaInventory" ALTER COLUMN "CreatedBy" SET DEFAULT 1;

ALTER TABLE "TankInventory"."StgSsaInventory" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "TankInventory"."StgSsaInventory" ADD CONSTRAINT "FK_StgSsaInventory_InventoryBatchProcess" FOREIGN KEY("BatchId") REFERENCES "TankInventory"."InventoryBatchProcess" ("BatchId");

