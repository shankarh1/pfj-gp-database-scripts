-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgWraProduct table
-- =============================================


CREATE TABLE "Staging"."StgWraProduct"(
	"WraSystemId" varchar(100) NULL,
	"WraProductId" varchar(100) NULL,
	"ProductType" varchar(100) NULL,
	"ProductCategory" varchar(100) NULL,
	"Description" varchar(100) NULL,
	"LongName" varchar(100) NULL,
	"AxxisProductType" varchar(100) NULL,
	"ColorName" varchar(100) NULL,
	"HexColorCode" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgWraProduct" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

