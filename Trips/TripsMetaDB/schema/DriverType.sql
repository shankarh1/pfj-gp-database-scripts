-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DriverType table
-- =============================================


CREATE TABLE "TripsMetaDB"."DriverType"(
	"DriverTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "TripsMetaDB"."DriverType" ADD CONSTRAINT "PK_DriverType" PRIMARY KEY("DriverTypeId");

