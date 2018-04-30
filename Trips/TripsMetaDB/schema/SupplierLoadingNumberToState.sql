-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create SupplierLoadingNumberToState table
-- =============================================


CREATE TABLE "TripsMetaDB"."SupplierLoadingNumberToState"(
	"SupplierLoadingNumberToStateId" serial NOT NULL,
	"SupplierLoadingNumberId" integer NOT NULL,
	"StateId" integer NOT NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToState" ADD CONSTRAINT "PK_SupplierLoadingNumberToState" PRIMARY KEY("SupplierLoadingNumberToStateId");

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToState" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToState" ADD CONSTRAINT "FK_SupplierLoadingNumberToState_SupplierLoadingNumber" FOREIGN KEY("SupplierLoadingNumberId") REFERENCES "TripsMetaDB"."SupplierLoadingNumber" ("SupplierLoadingNumberId")
ON UPDATE CASCADE
ON DELETE CASCADE;

