-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description: Create OrderDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderDetail"(
  "OrderDetailId" serial NOT NULL,
  "OrderId" integer NOT NULL,
  "ShipToId" bigint NULL,
  "ShipToName" varchar(50) NULL,
  "CustomerId" integer NULL,
  "CustomerName" varchar(50) NULL,
  "CustomerAcctNbr" integer NULL,
  "BolNumber" varchar(50) NULL,
  "PurchaseOrderNo" varchar(50) NULL,
  "SourceSystemOrderNo" varchar(50) NULL,
  "FONo" varchar(50) NULL,
  "SysTrxNo" decimal(18, 0) NULL,
  "DeliveryWindowStartDateTime" timestamp(6) NULL,
  "DeliveryWindowEndDateTime" timestamp(6) NULL,
  "Notes" text NULL,
  "CompanyCode" varchar(2) NULL,
  "Address" varchar(100) NULL,
  "Phone" varchar(50) NULL,
  "PullPoints" text NULL,
  "SapNotes" text NULL,
  "DrivingDirections" text NULL,
  "AscendStatus" integer NULL,
  "Status" char(1) NULL,
  "Processed" boolean NULL,
  "UseNoteOverride" boolean NULL,
  "UpdateFromAscend" boolean NULL,
  "IsPumpRequired" boolean NULL,
  "IsCanceled" boolean NULL,
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp(6) NOT NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."OrderDetail" ADD CONSTRAINT "PK_OrderDetail" PRIMARY KEY ("OrderDetailId");

ALTER TABLE "DispatchOrder"."OrderDetail" ALTER COLUMN "Processed" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderDetail" ALTER COLUMN "UseNoteOverride" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderDetail" ALTER COLUMN "UpdateFromAscend" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderDetail" ALTER COLUMN "IsPumpRequired" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderDetail" ALTER COLUMN "IsCanceled" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderDetail" ADD CONSTRAINT "FK_OrderDetail_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId")

