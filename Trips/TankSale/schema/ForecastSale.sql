-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create ForecastSale table
-- =============================================


CREATE TABLE "TankSale"."ForecastSale"(
	"ForecastSaleId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"ProductTypeId" integer NOT NULL,
	"ForecastDate" date NOT NULL,
	"ForecastHour" integer NOT NULL,
	"ForecastGallons" decimal(18, 4) NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankSale"."ForecastSale" ADD CONSTRAINT "PK_ForecastSale" PRIMARY KEY("ForecastSaleId");

ALTER TABLE "TankSale"."ForecastSale" ADD CONSTRAINT "FK_ForecastSale_ProductType" FOREIGN KEY("ProductTypeId") REFERENCES "TankSale"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankSale"."ForecastSale" ADD CONSTRAINT "FK_ForecastSale_Store" FOREIGN KEY("StoreId") REFERENCES "TankSale"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

