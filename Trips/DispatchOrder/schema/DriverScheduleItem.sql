-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverScheduleItem table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverScheduleItem"(
	"DriverScheduleItemId" serial NOT NULL,
	"DriverScheduleId" integer NOT NULL,
	"TruckId" integer NULL,
	"ItemSequenceNumber" integer NOT NULL,
	"StartTime" time(6) NOT NULL,
	"EndTime" time(6) NOT NULL,
	"ShiftId" integer NOT NULL,
	"NumberOfWorkingDays" integer NOT NULL,
	"NumberOfNonWorkingDays" integer NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DriverScheduleItem" ADD CONSTRAINT "PK_DriverScheduleItem" PRIMARY KEY("DriverScheduleItemId");

ALTER TABLE "DispatchOrder"."DriverScheduleItem" ADD CONSTRAINT "FK_DriverScheduleItem_DriverSchedule" FOREIGN KEY("DriverScheduleId")
REFERENCES "DispatchOrder"."DriverSchedule" ("DriverScheduleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DriverScheduleItem" ADD CONSTRAINT "FK_DriverScheduleItem_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

