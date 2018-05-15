-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Sale table
-- =============================================


CREATE TABLE "TankSale"."Sale"(
	"SaleId" serial NOT NULL,
	"StoreId" integer NULL,
	"ProductTypeId" integer NULL,
	"SalesDate" date NOT NULL,
	"SalesHour" integer NOT NULL,
	"SalesGallons" decimal(18, 4) NOT NULL,
	"IsProcessed" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankSale"."Sale" ADD CONSTRAINT "PK_Sale" PRIMARY KEY("SaleId");

ALTER TABLE "TankSale"."Sale" ALTER COLUMN "IsProcessed" SET DEFAULT false;

ALTER TABLE "TankSale"."Sale" ADD CONSTRAINT "FK_Sale_ProductType" FOREIGN KEY("ProductTypeId") REFERENCES "TankSale"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankSale"."Sale" ADD CONSTRAINT "FK_Sale_Store" FOREIGN KEY("StoreId") REFERENCES "TankSale"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

