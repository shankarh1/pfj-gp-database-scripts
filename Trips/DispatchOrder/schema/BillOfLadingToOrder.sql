-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create BillOfLadingToOrder table
-- =============================================


CREATE TABLE "DispatchOrder"."BillOfLadingToOrder"(
	"BillOfLadingToOrderId" serial NOT NULL,
	"BillOfLadingId" integer NULL,
	"OrderId" integer NULL,
	"OrderItemId" integer NULL,
	"OrderTypeId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "DispatchOrder"."BillOfLadingToOrder" ADD CONSTRAINT "PK_BillOfLadingToOrder" PRIMARY KEY("BillOfLadingToOrderId");

ALTER TABLE "DispatchOrder"."BillOfLadingToOrder" ADD CONSTRAINT "FK_BillOfLadingToOrder_OrderItem" FOREIGN KEY("OrderItemId") REFERENCES "DispatchOrder"."OrderItem" ("OrderItemId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."BillOfLadingToOrder" ADD CONSTRAINT "FK_BillOfLadingToOrder_OrderType" FOREIGN KEY("OrderTypeId")
REFERENCES "DispatchOrder"."OrderType" ("OrderTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

