-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create BillOfLading table
-- =============================================


CREATE TABLE "DispatchOrder"."BillOfLading"(
	"BillOfLadingId" serial NOT NULL,
	"BillOfLadingNumber" integer NOT NULL,
	"BillOfLadingDateTime" timestamp(6) NOT NULL,
	"DriverId" integer NULL,
	"CreatedSource" varchar(50) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6)
);

ALTER TABLE "DispatchOrder"."BillOfLading" ADD CONSTRAINT "PK_BillOfLading" PRIMARY KEY("BillOfLadingId");

ALTER TABLE "DispatchOrder"."BillOfLading" ADD CONSTRAINT "FK_BillOfLading_Driver" FOREIGN KEY("DriverId") REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

