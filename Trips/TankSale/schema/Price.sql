-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Price table
-- =============================================


CREATE TABLE "TankSale"."Price"(
	"PriceId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"ProductTypeId" integer NOT NULL,
	"Price" decimal(18, 4) NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankSale"."Price" ADD CONSTRAINT "PK_Price" PRIMARY KEY("PriceId");

ALTER TABLE "TankSale"."Price" ADD CONSTRAINT "FK_Price_ProductType" FOREIGN KEY("ProductTypeId") REFERENCES "TankSale"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankSale"."Price" ADD CONSTRAINT "FK_Price_Store" FOREIGN KEY("StoreId") REFERENCES "TankSale"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

