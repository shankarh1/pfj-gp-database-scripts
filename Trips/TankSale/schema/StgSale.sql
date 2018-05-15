-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create StgSale table
-- =============================================


CREATE TABLE "TankSale"."StgSale"(
	"StoreNumber" varchar(50) NOT NULL,
	"SalesDate" varchar(50) NOT NULL,
	"SalesHour" varchar(50) NOT NULL,
	"WraProductCode" varchar(10) NOT NULL,
	"SalesGallons" varchar(50) NOT NULL,
	"SaleId" serial NOT NULL,
	"BatchId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "TankSale"."StgSale" ADD CONSTRAINT "PK_StgSale" PRIMARY KEY("SaleId");

ALTER TABLE "TankSale"."StgSale" ALTER COLUMN "CreatedBy" SET DEFAULT 1;

ALTER TABLE "TankSale"."StgSale" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "TankSale"."StgSale" ADD CONSTRAINT "FK_StgSale_SaleBatchProcess" FOREIGN KEY("BatchId") REFERENCES "TankSale"."SaleBatchProcess" ("BatchId")
ON UPDATE CASCADE
ON DELETE CASCADE;

