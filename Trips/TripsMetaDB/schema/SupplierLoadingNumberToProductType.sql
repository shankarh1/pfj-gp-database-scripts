-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create SupplierLoadingNumberToProductType table
-- =============================================


CREATE TABLE "TripsMetaDB"."SupplierLoadingNumberToProductType"(
	"SupplierLoadingNumberToProductTypeId" serial NOT NULL,
	"SupplierLoadingNumberId" integer NOT NULL,
	"ProductTypeId" integer NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToProductType" ADD CONSTRAINT "PK_SupplierLoadingNumberToProductType" PRIMARY KEY("SupplierLoadingNumberToProductTypeId");

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToProductType" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToProductType" ADD CONSTRAINT "FK_SupplierLoadingNumberToProductType_ProductType" FOREIGN KEY("ProductTypeId")
REFERENCES "TripsMetaDB"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToProductType" ADD CONSTRAINT "FK_SupplierLoadingNumberToProductType_SupplierLoadingNumber" FOREIGN KEY("SupplierLoadingNumberId") REFERENCES "TripsMetaDB"."SupplierLoadingNumber" ("SupplierLoadingNumberId")
ON UPDATE CASCADE
ON DELETE CASCADE;

