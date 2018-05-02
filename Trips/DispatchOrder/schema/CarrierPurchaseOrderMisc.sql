-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierPurchaseOrderMisc table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierPurchaseOrderMisc"(
	"CarrierPurchaseOrderMiscId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"PurchaseOrderNumber" varchar(10) NOT NULL,
	"Amount" decimal(18, 2) NULL,
	"Comments" text NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderMisc" ADD CONSTRAINT "PK_CarrierPurchaseOrderMisc" PRIMARY KEY("CarrierPurchaseOrderMiscId");

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderMisc" ALTER COLUMN "IsActive" SET DEFAULT true;

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderMisc" ADD CONSTRAINT "FK_CarrierPurchaseOrderMisc_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId");

