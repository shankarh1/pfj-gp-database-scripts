-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create SupplierLoadingNumberToCarrier table
-- =============================================


CREATE TABLE "TripsMetaDB"."SupplierLoadingNumberToCarrier"(
	"SupplierLoadingNumberToCarrierId" serial NOT NULL,
	"SupplierLoadingNumberId" integer NOT NULL,
	"CarrierId" integer NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToCarrier" ADD CONSTRAINT "PK_SupplierLoadingNumberToCarrier" PRIMARY KEY("SupplierLoadingNumberToCarrierId");

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToCarrier" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToCarrier" ADD CONSTRAINT "FK_SupplierLoadingNumberToCarrier_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "TripsMetaDB"."Carrier" ("CarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumberToCarrier" ADD CONSTRAINT "FK_SupplierLoadingNumberToCarrier_SupplierLoadingNumber" FOREIGN KEY("SupplierLoadingNumberId") REFERENCES "TripsMetaDB"."SupplierLoadingNumber" ("SupplierLoadingNumberId")
ON UPDATE CASCADE
ON DELETE CASCADE;

