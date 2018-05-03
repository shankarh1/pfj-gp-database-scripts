-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierPurchaseOrderExtraStop table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierPurchaseOrderExtraStop"(
	"CarrierPurchaseOrderExtraStopId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"PurchaseOrderNumber" varchar(10) NOT NULL,
	"NumberOfStops" integer NULL,
	"Comments" text NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderExtraStop" ADD CONSTRAINT "PK_CarrierPurchaseOrderExtraStop" PRIMARY KEY("CarrierPurchaseOrderExtraStopId");

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderExtraStop" ALTER COLUMN "IsActive" SET DEFAULT true;

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderExtraStop" ADD CONSTRAINT "FK_CarrierPurchaseOrderExtraStop_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId");

