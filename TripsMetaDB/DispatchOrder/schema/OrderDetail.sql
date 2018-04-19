-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-19
-- Description: Create OrderDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderDetail"(
  "OrderDetailId" serial NOT NULL,
  "OrderId" integer NOT NULL,
  "ShipToId" bigint  NULL,
  "ShipToName" varchar(50)  NULL,
  "CustomerId" integer  NULL,
  "CustomerName" varchar(50)  NULL,
  "CustomerAcctNbr" integer  NULL,
  "BolNumber" varchar(50)  NULL,
  "FONo" varchar(50)  NULL,
  "PurchaseOrderNo" varchar(50)  NULL,
  "SourceSystemOrderNo" varchar(50)  NULL,
  "SysTrxNo" decimal(18,0)  NULL,
  "DeliveryWindowStartDateTime" timestamp  NULL,
  "DeliveryWindowEndDateTime" timestamp  NULL,
  "Notes" text,
  "CompanyCode" varchar(2)  NULL,
  "Address" varchar(100)  NULL,
  "Phone" varchar(50)  NULL,
  "PullPoints" text,
  "SapNotes" text,
  "DrivingDirections" text,
  "AscendStatus" integer  NULL,
  "Status" char(1)  NULL,
  "Processed" boolean  NULL,
  "UseNoteOverride" boolean  NULL,
  "UpdateFromAscend" boolean  NULL,
  "IsPumpRequired" boolean  NULL,
  "IsCanceled" boolean  NULL,
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp  NULL,
  "LastUpdatedBy" integer  NULL,
  "LastUpdatedDateTime" timestamp  NULL
);

ALTER TABLE "DispatchOrder"."OrderDetail" ADD CONSTRAINT "PK_OrderDetail" PRIMARY KEY ("OrderDetailId");

ALTER TABLE "DispatchOrder"."OrderDetail" ADD CONSTRAINT "FK_OrderDetail_Orders" FOREIGN KEY ("OrderId") REFERENCES "DispatchOrder"."Orders" ("OrderId") ON DELETE CASCADE ON UPDATE CASCADE;

