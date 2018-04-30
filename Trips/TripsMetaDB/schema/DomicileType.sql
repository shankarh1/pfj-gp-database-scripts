-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DomicileType table
-- =============================================


CREATE TABLE "TripsMetaDB"."DomicileType"(
	"DomicileTypeId" serial NOT NULL,
	"DomicileTypeName" varchar(250) NOT NULL
);

ALTER TABLE "TripsMetaDB"."DomicileType" ADD CONSTRAINT "PK_DomicileType" PRIMARY KEY("DomicileTypeId");

