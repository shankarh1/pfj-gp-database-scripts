-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create SsaStoreProductTank table
-- =============================================


CREATE TABLE "TankInventory"."SsaStoreProductTank"(
	"StoreProductTankId" serial NOT NULL,
	"SsaStoreId" integer NOT NULL,
	"SsaTankId" integer NOT NULL,
	"SsaFuelTypeId" integer NOT NULL,
	"SsaFuelType" varchar(50) NOT NULL,
	"TankId" integer NULL,
	"ProductId" integer NULL
);

ALTER TABLE "TankInventory"."SsaStoreProductTank" ADD CONSTRAINT "PK_SsaStoreProductTank" PRIMARY KEY("StoreProductTankId");

