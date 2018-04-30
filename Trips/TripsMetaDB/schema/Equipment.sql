-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Equipment table
-- =============================================


CREATE TABLE "TripsMetaDB"."Equipment"(
	"EquipmentId" serial NOT NULL,
	"PandLAreaId" integer NULL,
	"EquipmentStatusId" integer NULL,
	"UnitNumber" varchar(50) NOT NULL,
	"Comments" text NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Equipment" ADD CONSTRAINT "PK_Equipment" PRIMARY KEY("EquipmentId");

ALTER TABLE "TripsMetaDB"."Equipment" ADD CONSTRAINT "FK_Equipment_EquipmentStatus" FOREIGN KEY("EquipmentStatusId")
REFERENCES "TripsMetaDB"."EquipmentStatus" ("EquipmentStatusId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."Equipment" ADD CONSTRAINT "FK_Equipment_PandLArea" FOREIGN KEY("PandLAreaId")
REFERENCES "TripsMetaDB"."PandLArea" ("PandLAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

