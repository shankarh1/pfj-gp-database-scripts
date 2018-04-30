-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgT4SupplierCompany table
-- =============================================


CREATE TABLE "Staging"."StgT4SupplierCompany"(
	"T4SupplierCode" varchar(100) NULL,
	"SupplierLoOId" varchar(100) NULL,
	"T4Code" varchar(100) NULL,
	"T4SupplierName" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgT4SupplierCompany" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

