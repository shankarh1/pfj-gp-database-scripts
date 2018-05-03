-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DomicileType table
-- =============================================


CREATE TABLE "DispatchOrder"."DomicileType"(
	"DomicileTypeId" serial NOT NULL,
	"DomicileTypeName" varchar(250) NOT NULL
);

ALTER TABLE "DispatchOrder"."DomicileType" ADD CONSTRAINT "PK_DomicileType" PRIMARY KEY("DomicileTypeId");

