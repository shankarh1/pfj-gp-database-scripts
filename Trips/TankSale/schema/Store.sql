-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Store table
-- =============================================


CREATE TABLE "TankSale"."Store"(
	"StoreId" serial NOT NULL,
	"Number" integer NULL,
	"Name" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"TimeZoneName" varchar(100) NULL,
	"DivisionManagerEmail" varchar(50) NULL,
	"RegionalManagerEmail" varchar(50) NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankSale"."Store" ADD CONSTRAINT "PK_Store" PRIMARY KEY("StoreId");

ALTER TABLE "TankSale"."Store" ALTER COLUMN "IsActive" SET DEFAULT false;

