-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create SupplierLoadingNumber table
-- =============================================


CREATE TABLE "TripsMetaDB"."SupplierLoadingNumber"(
	"SupplierLoadingNumberId" serial NOT NULL,
	"CompanyId" integer NOT NULL,
	"TerminalId" integer NULL,
	"SupplierId" integer NULL,
	"LoadingNumber" text NOT NULL,
	"Comment" text NULL,
	"IsContractCarrier" boolean NULL,
	"IsPfj" boolean NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NULL,
	"CreatedDateTime" timestamp NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ADD CONSTRAINT "PK_SupplierLoadingNumber" PRIMARY KEY("SupplierLoadingNumberId");

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ALTER COLUMN "IsContractCarrier" SET DEFAULT false;


ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ALTER COLUMN "IsPfj" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ADD CONSTRAINT "FK_SupplierLoadingNumber_Company" FOREIGN KEY("CompanyId") REFERENCES "TripsMetaDB"."Company" ("CompanyId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ADD CONSTRAINT "FK_SupplierLoadingNumber_Supplier" FOREIGN KEY("SupplierId") REFERENCES "TripsMetaDB"."Supplier" ("SupplierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."SupplierLoadingNumber" ADD CONSTRAINT "FK_SupplierLoadingNumber_Terminal" FOREIGN KEY("TerminalId") REFERENCES "TripsMetaDB"."Terminal" ("TerminalId")
ON UPDATE CASCADE
ON DELETE CASCADE;

