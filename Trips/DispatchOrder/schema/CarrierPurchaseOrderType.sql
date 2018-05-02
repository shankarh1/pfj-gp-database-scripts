-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierPurchaseOrderType table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierPurchaseOrderType"(
	"CarrierPurchaseOrderTypeId" serial NOT NULL,
	"Code" varchar(4) NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."CarrierPurchaseOrderType" ADD CONSTRAINT "PK_CarrierPurchaseOrderType" PRIMARY KEY("CarrierPurchaseOrderTypeId");

