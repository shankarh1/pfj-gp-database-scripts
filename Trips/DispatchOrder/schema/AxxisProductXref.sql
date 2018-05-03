-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create AxxisProductXref table
-- =============================================


CREATE TABLE "DispatchOrder"."AxxisProductXref"(
	"AxxisProductXrefId" serial NOT NULL,
	"ProductType" char(1) NOT NULL,
	"FuelPurchasingColumn" char(1) NULL,
	"AxxisProductName" varchar(6) NULL,
	"FuelSmartProductId" integer NULL,
	"BillOfLadingExportProductCode" varchar(5) NULL,
	"EffectiveDate" date NULL,
	"IsActive" boolean NOT NULL
);

ALTER TABLE "DispatchOrder"."AxxisProductXref" ADD CONSTRAINT "PK_AxxisProductXref" PRIMARY KEY("AxxisProductXrefId");

ALTER TABLE "DispatchOrder"."AxxisProductXref" ALTER COLUMN "IsActive" SET DEFAULT false;

