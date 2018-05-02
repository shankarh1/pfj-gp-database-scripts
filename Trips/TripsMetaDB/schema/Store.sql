-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Store table
-- =============================================


CREATE TABLE "TripsMetaDB"."Store"(
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

ALTER TABLE "TripsMetaDB"."Store" ADD CONSTRAINT "PK_Store" PRIMARY KEY("StoreId");

