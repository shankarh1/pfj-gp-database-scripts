-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgProduct table
-- =============================================


CREATE TABLE "Staging"."StgProduct"(
	"productSystemId" varchar(100) NULL,
	"ProductCode" varchar(100) NULL,
	"ProductName" varchar(100) NULL,
	"ProductCategory" varchar(100) NULL,
	"AxxisGuid" varchar(100) NULL,
	"AxxisProductName" varchar(100) NULL,
	"AxxisStatus" varchar(100) NULL,
	"GamePlanGuid" varchar(100) NULL,
	"GamePlanProductType" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgProduct" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

