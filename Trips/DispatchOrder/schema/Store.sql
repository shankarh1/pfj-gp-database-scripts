-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Store table
-- =============================================


CREATE TABLE "DispatchOrder"."Store"(
	"StoreId" serial NOT NULL,
	"Number" integer NULL,
	"Name" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"TimeZoneName" varchar(100) NULL,
	"DivisionManagerEmail" varchar(50) NULL,
	"RegionalManagerEmail" varchar(50) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Store" ADD CONSTRAINT "PK_Store" PRIMARY KEY("StoreId");

ALTER TABLE "DispatchOrder"."Store" ALTER COLUMN "IsActive" SET DEFAULT false;

