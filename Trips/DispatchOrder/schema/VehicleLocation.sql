-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create VehicleLocation table
-- =============================================


CREATE TABLE "DispatchOrder"."VehicleLocation"(
	"VehicleLocationId" serial NOT NULL,
	"TruckId" integer NULL,
	"EstDateTime" timestamp(6) NULL,
	"GmtDateTime" timestamp(6) NULL,
	"Latitude" numeric(12, 8) NULL,
	"Longitude" numeric(12, 8) NULL,
	"Speed" integer NULL,
	"Heading" DOUBLE PRECISION NULL,
	"Odometer" numeric(18, 1) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "DispatchOrder"."VehicleLocation" ADD CONSTRAINT "PK_VehicleLocation" PRIMARY KEY("VehicleLocationId");

ALTER TABLE "DispatchOrder"."VehicleLocation" ADD CONSTRAINT "FK_VehicleLocation_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE CASCADE
ON DELETE CASCADE;

