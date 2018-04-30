-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgCarrierLoO table
-- =============================================


CREATE TABLE "Staging"."StgCarrierLoO"(
	"LooId" varchar(100) NULL,
	"CarrierMasterId" varchar(100) NULL,
	"FuelSmartCarrierId" varchar(100) NULL,
	"FuelSmartCarrierName" varchar(100) NULL,
	"FuelSmartShortName" varchar(100) NULL,
	"FuelSmartAddress1" varchar(300) NULL,
	"FuelSmartAddress2" varchar(300) NULL,
	"FuelSmartCity" varchar(100) NULL,
	"FuelSmartState" varchar(100) NULL,
	"FuelSmartPostalCode" varchar(100) NULL,
	"FuelSmartCountry" varchar(100) NULL,
	"FuelSmartFax" varchar(100) NULL,
	"FuelSmartEmail" varchar(100) NULL,
	"FuelSmartStatus" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgCarrierLoO" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

