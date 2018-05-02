-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierPurchaseOrderDemurrage table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierPurchaseOrderDemurrage"(
	"CarrierPurchaseOrderDemurrageId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"PurchaseOrderNumber" varchar(10) NOT NULL,
	"TerminalWaitTimeInMinutes" integer NULL,
	"StoreWaitTimeInMinutes" integer NULL,
	"Comments" text NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderDemurrage" ADD CONSTRAINT "PK_CarrierPurchaseOrderDemurrage" PRIMARY KEY("CarrierPurchaseOrderDemurrageId");


ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderDemurrage" ALTER COLUMN "IsActive" SET DEFAULT true;

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderDemurrage" ADD CONSTRAINT "FK_CarrierPurchaseOrderDemurrage_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId")

