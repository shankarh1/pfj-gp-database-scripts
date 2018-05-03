-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverType table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverType"(
	"DriverTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."DriverType" ADD CONSTRAINT "PK_DriverType" PRIMARY KEY("DriverTypeId");

