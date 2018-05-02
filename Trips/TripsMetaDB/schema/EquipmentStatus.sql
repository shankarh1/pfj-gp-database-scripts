-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create EquipmentStatus table
-- =============================================


CREATE TABLE "TripsMetaDB"."EquipmentStatus"(
	"EquipmentStatusId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "TripsMetaDB"."EquipmentStatus" ADD CONSTRAINT "PK_EquipmentStatus" PRIMARY KEY("EquipmentStatusId")

