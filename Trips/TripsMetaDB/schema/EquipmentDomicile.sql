-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create EquipmentDomicile table
-- =============================================


CREATE TABLE "TripsMetaDB"."EquipmentDomicile"(
	"EquipmentDomicileId" serial NOT NULL,
	"EquipmentId" integer NOT NULL,
	"DomicileId" integer NULL,
	"StartDateTime" timestamp NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."EquipmentDomicile" ADD CONSTRAINT "PK_EquipmentDomicile" PRIMARY KEY("EquipmentDomicileId");

ALTER TABLE "TripsMetaDB"."EquipmentDomicile" ADD CONSTRAINT "FK_EquipmentDomicile_Equipment" FOREIGN KEY("EquipmentId")
REFERENCES "TripsMetaDB"."Equipment" ("EquipmentId")
ON UPDATE CASCADE
ON DELETE CASCADE;

