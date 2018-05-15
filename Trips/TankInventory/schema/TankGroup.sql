-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create TankGroup table
-- =============================================


CREATE TABLE "TankInventory"."TankGroup"(
	"TankGroupId" serial NOT NULL,
	"LegacyTankGroupId" integer NULL,
	"StoreId" integer NULL,
	"ProductTypeId" integer NULL,
	"Name" varchar(50) NOT NULL,
	"DaysOnHandThreshold" decimal(5, 2) NOT NULL,
	"StartDateTime" timestamp(6) NOT NULL,
	"EndDateTime" timestamp(6) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankInventory"."TankGroup" ADD CONSTRAINT "PK_TankGroup" PRIMARY KEY("TankGroupId");

ALTER TABLE "TankInventory"."TankGroup" ADD CONSTRAINT "FK_TankGroup_ProductType" FOREIGN KEY("ProductTypeId") REFERENCES "TankInventory"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankInventory"."TankGroup" ADD CONSTRAINT "FK_TankGroup_Store" FOREIGN KEY("StoreId") REFERENCES "TankInventory"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

