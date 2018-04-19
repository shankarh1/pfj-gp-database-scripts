-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-19
-- Description: Create OrderItemDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderItemDetail"(
  "OrderItemDetailId" serial NOT NULL,
  "OrderItemId" integer NOT NULL,
  "SysTrxNo" decimal(18,0) NULL,
  "SysTrxLine" integer NULL,
  "SourceTerminalGroupCode" varchar(50) NULL,
  "SourceTerminalName" text,
  "SourceSupplierName" text,
  "SourceProductGroupCode" char(1) NULL,
  "SourceProductName" varchar(50) NULL,
  "SourceLoadingNumber" text,
  "CreatedBy" integer NULL,
  "CreatedDateTime" timestamp NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."OrderItemDetail" ADD CONSTRAINT "PK_OrderItemDetail" PRIMARY KEY ("OrderItemDetailId");

ALTER TABLE "DispatchOrder"."OrderItemDetail" ADD CONSTRAINT "FK_OrderItemDetail_OrderItem" FOREIGN KEY ("OrderItemId") REFERENCES "DispatchOrder"."OrderItem" ("OrderItemId") ON DELETE CASCADE ON UPDATE CASCADE;

