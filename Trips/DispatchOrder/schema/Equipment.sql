-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Equipment table
-- =============================================


CREATE TABLE "DispatchOrder"."Equipment"(
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

ALTER TABLE "DispatchOrder"."Equipment" ADD CONSTRAINT "PK_Equipment" PRIMARY KEY("EquipmentId");

ALTER TABLE "DispatchOrder"."Equipment" ADD CONSTRAINT "FK_Equipment_EquipmentStatus" FOREIGN KEY("EquipmentStatusId")
REFERENCES "DispatchOrder"."EquipmentStatus" ("EquipmentStatusId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Equipment" ADD CONSTRAINT "FK_Equipment_PandLArea" FOREIGN KEY("PandLAreaId")
REFERENCES "DispatchOrder"."PandLArea" ("PandLAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

