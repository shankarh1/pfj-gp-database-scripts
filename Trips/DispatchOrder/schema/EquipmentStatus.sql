-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create EquipmentStatus table
-- =============================================


CREATE TABLE "DispatchOrder"."EquipmentStatus"(
	"EquipmentStatusId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."EquipmentStatus" ADD CONSTRAINT "PK_EquipmentStatus" PRIMARY KEY("EquipmentStatusId")

