-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create ProductType table
-- =============================================


CREATE TABLE "TankInventory"."ProductType"(
	"ProductTypeId" serial NOT NULL,
	"Name" varchar(100) NULL,
	"WraProductLongName" varchar(100) NULL,
	"WraProductCode" varchar(10) NULL,
	"ProductCategory" varchar(100) NULL,
	"AxxisProductType" varchar(10) NULL,
	"ColorName" varchar(50) NULL,
	"ColorCode" varchar(50) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankInventory"."ProductType" ADD CONSTRAINT "PK_ProductType" PRIMARY KEY("ProductTypeId");

