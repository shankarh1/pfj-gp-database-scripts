-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StgSapOrderItem table
-- =============================================


CREATE TABLE "DispatchOrder"."StgSapOrderItem"(
	"SapOrderItemId" serial NOT NULL,
	"OrderNumber" bigint NOT NULL,
	"ItemNo" varchar(50) NOT NULL,
	"Material" varchar(50) NULL,
	"MaterialDesc" varchar(50) NULL,
	"QuantityPerItemNo" varchar(50) NULL,
	"UOM" varchar(50) NULL,
	"Plant" varchar(50) NULL,
	"PlantDesc" varchar(50) NULL,
	"PlantLatitude" decimal(18, 6) NULL,
	"PlantLongtitude" decimal(18, 6) NULL,
	"UpdateFlag" varchar(50) NULL,
	"Supplier" varchar(50) NULL,
	"SupplierName" varchar(50) NULL,
	"LoadingNumber" varchar(50) NULL
);

ALTER TABLE "DispatchOrder"."StgSapOrderItem" ADD CONSTRAINT "PK_StgSapOrderItem" PRIMARY KEY("SapOrderItemId");

ALTER TABLE "DispatchOrder"."StgSapOrderItem" ADD CONSTRAINT "FK_StgSapOrderItem_StgSapOrder" FOREIGN KEY("OrderNumber")
REFERENCES "DispatchOrder"."StgSapOrder" ("OrderNumber");

