-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create ProductType table
-- =============================================


CREATE TABLE "TripsMetaDB"."ProductType"(
	"ProductTypeId" serial NOT NULL,
	"Name" varchar(100) NULL,
	"WraProductLongName" varchar(100) NULL,
	"WraProductCode" varchar(10) NULL,
	"ProductCategory" varchar(100) NULL,
	"AxxisProductType" varchar(10) NULL,
	"ColorName" varchar(50) NULL,
	"ColorCode" varchar(50) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."ProductType" ADD CONSTRAINT "PK_ProductType" PRIMARY KEY(ProductTypeId);

