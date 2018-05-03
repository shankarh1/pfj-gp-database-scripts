-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierPurchaseOrderOutofRoute table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierPurchaseOrderOutofRoute"(
	"OrderId" integer NOT NULL,
	"CarrierPurchaseOrderOutofRouteId" serial NOT NULL,
	"PurchaseOrderNumber" varchar(10) NOT NULL,
	"Comments" text NULL,
	"Mileage" decimal(18, 2) NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"LastUpdatedBy" integer NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderOutofRoute" ADD CONSTRAINT "PK_CarrierPurchaseOrderOutofRoute" PRIMARY KEY("CarrierPurchaseOrderOutofRouteId");

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderOutofRoute" ALTER COLUMN "IsActive" SET DEFAULT true;

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderOutofRoute" ADD CONSTRAINT "FK_CarrierPurchaseOrderOutofRoute_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId");

