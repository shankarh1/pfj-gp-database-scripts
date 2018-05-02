-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgCarrier table
-- =============================================


CREATE TABLE "Staging"."StgCarrier"(
	"CarrierMasterId" varchar(100) NOT NULL,
	"CarrierName" varchar(100) NULL,
	"VendorId" varchar(100) NULL,
	"ScacCode" varchar(100) NULL,
	"Status" varchar(100) NULL,
	"Address1" varchar(300) NULL,
	"Address2" varchar(300) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"PostalCode" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"Phone" varchar(100) NULL,
	"Fein" varchar(100) NULL,
	"Raid" varchar(100) NULL,
	"RaStatus" varchar(100) NULL,
	"DtnCode" varchar(100) NULL,
	"T4Code" varchar(100) NULL,
	"CarrierType" varchar(100) NULL,
	"InactivatedDate" varchar(100) NULL,
	"InactivatedBy" varchar(100) NULL,
	"InactivatedReason" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgCarrier" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

