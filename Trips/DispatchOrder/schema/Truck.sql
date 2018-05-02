-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Truck table
-- =============================================


CREATE TABLE "DispatchOrder"."Truck"(
	"TruckId" serial NOT NULL,
	"EquipmentId" integer NULL,
	"Number" varchar(100) NULL,
	"HasPump" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Truck" ADD CONSTRAINT "PK_Truck" PRIMARY KEY("TruckId");

ALTER TABLE "DispatchOrder"."Truck" ALTER COLUMN "HasPump" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."Truck" ADD CONSTRAINT "FK_Truck_Equipment" FOREIGN KEY("EquipmentId")
REFERENCES "DispatchOrder"."Equipment" ("EquipmentId")
ON UPDATE CASCADE
ON DELETE CASCADE;

