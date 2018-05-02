-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create ShipToType table
-- =============================================


CREATE TABLE "TripsMetaDB"."ShipToType"(
	"ShipToTypeId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "TripsMetaDB"."ShipToType" ADD CONSTRAINT "PK_ShipToType" PRIMARY KEY("ShipToTypeId");

