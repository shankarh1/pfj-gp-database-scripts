-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgSupplierLoO table
-- =============================================


CREATE TABLE "Staging"."StgSupplierLoO"(
	"LoOId" varchar(100) NULL,
	"SupplierMasterId" varchar(100) NULL,
	"AccountType" varchar(100) NULL,
	"AccountDescription" varchar(100) NULL,
	"Supplier3CharCode" varchar(100) NULL,
	"AxxisSupplierGuid" varchar(100) NULL,
	"AxxisSupplierCode" varchar(100) NULL,
	"AxxisSupplierName" varchar(100) NULL,
	"AxxisSupplierContract" varchar(100) NULL,
	"AxxisSupplierBranded" varchar(100) NULL,
	"AxxisSupplierBenchmark" varchar(100) NULL,
	"AxxisUpdateDate" varchar(100) NULL,
	"FuelSmartSupplierId" varchar(100) NULL,
	"FuelSmartSupplierName" varchar(100) NULL,
	"FuelSmartShortName" varchar(100) NULL,
	"FuelSmartActive" varchar(100) NULL,
	"FuelSmartInvoiceOn" varchar(100) NULL,
	"FuelSmartPaymentTermId" varchar(100) NULL,
	"FuelSmartBrandId" varchar(100) NULL,
	"FuelSmartNotes" varchar(100) NULL,
	"FuelSmartUpdatedUser" varchar(100) NULL,
	"FuelSmartUpdatedDate" varchar(100) NULL,
	"TripsSupplierId" varchar(100) NULL,
	"TripsSupplierName" varchar(100) NULL,
	"TripsShortName" varchar(100) NULL,
	"TripsActive" varchar(100) NULL,
	"TripsSupplierType" varchar(100) NULL,
	"TripsDef" varchar(100) NULL,
	"TripsUpdatedUser" varchar(100) NULL,
	"TripsUpdatedDate" varchar(100) NULL,
	"GameplanSupplierGuid" varchar(100) NULL,
	"GameplanSupplierCode" varchar(100) NULL,
	"GameplanContractSupplier" varchar(100) NULL,
	"GameplanBrandedSupplier" varchar(100) NULL,
	"GameplanBenchmarkSupplier" varchar(100) NULL,
	"GameplanInactive" varchar(100) NULL,
	"GameplanUpdatedUser" varchar(100) NULL,
	"GameplanUpdatedDate" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgSupplierLoO" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

