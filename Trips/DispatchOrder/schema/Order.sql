-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description: Create Order table
-- =============================================


CREATE TABLE "DispatchOrder"."Order"(
  "OrderId" serial NOT NULL,
  "OrderTypeId" integer NOT NULL,
  "OrderCreationTypeId" integer NOT NULL,
  "OrderSourceSystemId" integer NOT NULL,
  "OrderStatusTypeId" integer NOT NULL,
  "DispatchAreaId" integer NULL,
  "LoadId" integer NOT NULL,
  "DriverId" integer NULL,
  "EquipmentId" integer NULL,
  "CarrierId" integer NULL,
  "TripsCarrierId" integer NULL,
  "OrderDeletionReasonId" integer NULL,
  "StartShiftId" integer NULL,
  "ScheduledStartDateTime" timestamp NULL,
  "ScheduledEndDateTime" timestamp NULL,
  "DeliveredDateTime" timestamp NULL,
  "OrderProgress" integer NULL,
  "OrderDeletionComment" text,
  "IsDeleted" boolean NOT NULL,
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp NOT NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "PK_Order" PRIMARY KEY ("OrderId");

ALTER TABLE "DispatchOrder"."Order" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "FK_Order_Load" FOREIGN KEY ("LoadId") REFERENCES "DispatchOrder"."Load" ("LoadId")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "FK_Order_OrderCreationType" FOREIGN KEY("OrderCreationTypeId") REFERENCES "DispatchOrder"."OrderCreationType" ("OrderCreationTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "FK_Order_OrderDeletionReason" FOREIGN KEY("OrderDeletionReasonId") REFERENCES "DispatchOrder"."OrderDeletionReason" ("OrderDeletionReasonId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "FK_Order_OrderSourceSystem" FOREIGN KEY("OrderSourceSystemId")REFERENCES "DispatchOrder"."OrderSourceSystem" ("OrderSourceSystemId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Order" ADD CONSTRAINT "FK_Order_OrderStatusType" FOREIGN KEY("OrderStatusTypeId")
REFERENCES "DispatchOrder"."OrderStatusType" ("OrderStatusTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

