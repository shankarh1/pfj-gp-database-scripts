-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description: Create OrderItem table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderItem" (
  "OrderItemId" serial NOT NULL,
  "OrderId" integer NOT NULL,
  "OrderItemStatusTypeId" integer NULL,
  "OrderItemSequenceNumber" integer NULL,
  "OrderItemGroupNumber" bigint NULL,
  "ShipToId" integer NULL,
  "TerminalId" integer NULL,
  "TerminalName" varchar(100) NULL,
  "SupplierId" integer NULL,
  "SupplyChangeReasonId" integer NULL,
  "ProductTypeId" integer NULL,
  "ProductId" integer NULL,
  "AxxisProductId" integer NULL,
  "AxxisProductCode" varchar(50) NULL,
  "Gallons" integer NOT NULL,
  "GallonsEnteredAtKiosk" integer NULL,
  "DeliveryNumber" integer NULL,
  "DeliveredDateTime" timestamp NULL,
  "Price" decimal(12,4) NULL,
  "IsDeleted" boolean NOT NULL DEFAULT '0',
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."OrderItem" ADD CONSTRAINT "PK_OrderItem" PRIMARY KEY ("OrderItemId");

ALTER TABLE "DispatchOrder"."OrderItem" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderItem" ADD CONSTRAINT "FK_OrderItem_Order" FOREIGN KEY ("OrderId") REFERENCES "DispatchOrder"."Order" ("OrderId")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "DispatchOrder"."OrderItem" ADD CONSTRAINT "FK_OrderItem_OrderItemStatusType" FOREIGN KEY("OrderItemStatusTypeId") REFERENCES "DispatchOrder"."OrderItemStatusType" ("OrderItemStatusTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

