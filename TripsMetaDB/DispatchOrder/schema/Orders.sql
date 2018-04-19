-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-19
-- Description: Create Orders table
-- =============================================


CREATE TABLE "DispatchOrder"."Orders"(
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

ALTER TABLE "DispatchOrder"."Orders" ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("OrderId");

ALTER TABLE "DispatchOrder"."Orders" ADD CONSTRAINT "FK_Orders_Loads" FOREIGN KEY ("LoadId") REFERENCES "DispatchOrder"."Loads" ("LoadId") ON DELETE CASCADE ON UPDATE CASCADE;

