-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create ShipToType table
-- =============================================


CREATE TABLE "TankInventory"."ShipToType"(
	"ShipToTypeId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "TankInventory"."ShipToType" ADD CONSTRAINT "PK_ShipToType" PRIMARY KEY("ShipToTypeId");

