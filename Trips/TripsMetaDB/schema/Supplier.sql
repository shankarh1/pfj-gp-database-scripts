-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Supplier table
-- =============================================


CREATE TABLE "TripsMetaDB"."Supplier"(
	"SupplierId" serial NOT NULL,
	"SupplierMasterId" integer NULL,
	"LegacySupplierId" integer NULL,
	"Name" varchar(100) NULL,
	"ShortName" varchar(8) NULL,
	"Code" varchar(9) NULL,
	"Type" varchar(10) NULL,
	"AxxisSupplierName" varchar(100) NULL,
	"AxxisSupplierCode" varchar(100) NULL,
	"AxxisGuid" varchar(50) NULL,
	"GameplanGuid" varchar(50) NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Supplier" ADD CONSTRAINT "PK_Supplier" PRIMARY KEY("SupplierId");

ALTER TABLE "TripsMetaDB"."Supplier" ALTER COLUMN "IsActive" SET DEFAULT false;

