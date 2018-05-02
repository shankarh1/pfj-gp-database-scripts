-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Truck table
-- =============================================


CREATE TABLE "TripsMetaDB"."Truck"(
	"TruckId" serial NOT NULL,
	"EquipmentId" integer NULL,
	"Number" varchar(100) NULL,
	"HasPump" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Truck" ADD CONSTRAINT "PK_Truck" PRIMARY KEY("TruckId");

ALTER TABLE "TripsMetaDB"."Truck" ALTER COLUMN "HasPump" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."Truck" ADD CONSTRAINT "FK_Truck_Equipment" FOREIGN KEY("EquipmentId")
REFERENCES "TripsMetaDB"."Equipment" ("EquipmentId")
ON UPDATE CASCADE
ON DELETE CASCADE;

