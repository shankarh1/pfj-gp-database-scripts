-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create ShipToType table
-- =============================================


CREATE TABLE "DispatchOrder"."ShipToType"(
	"ShipToTypeId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."ShipToType" ADD CONSTRAINT "PK_ShipToType" PRIMARY KEY("ShipToTypeId");

