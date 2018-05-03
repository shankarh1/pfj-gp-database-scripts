-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create ScheduleOverride table
-- =============================================


CREATE TABLE "DispatchOrder"."ScheduleOverride"(
	"ScheduleOverrideId" serial NOT NULL,
	"ScheduleOverrideTypeId" integer NOT NULL,
	"DriverId" integer NOT NULL,
	"TruckId" integer NULL,
	"ShiftId" integer NULL,
	"IsRental" boolean NULL,
	"StartDateTime" timestamp(6) NULL,
	"EndDateTime" timestamp(6) NULL,
	"VacationDays" integer NULL,
	"Reason" varchar(500) NULL,
	"HrReason" varchar(500) NULL,
	"IsAccepted" boolean NULL,
	"IsDeleted" boolean NULL,
	"ApprovedBy" integer NULL,
	"ApprovedDateTime" timestamp(6) NULL,
	"CreatedBy" integer NULL,
	"CreatedDateTime" timestamp(6) NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."ScheduleOverride" ADD CONSTRAINT "PK_ScheduleOverride" PRIMARY KEY("ScheduleOverrideId");

ALTER TABLE "DispatchOrder"."ScheduleOverride" ALTER COLUMN "IsRental" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."ScheduleOverride" ALTER COLUMN "IsAccepted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."ScheduleOverride" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."ScheduleOverride" ADD CONSTRAINT "FK_ScheduleOverride_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId");

ALTER TABLE "DispatchOrder"."ScheduleOverride" ADD CONSTRAINT "FK_ScheduleOverride_ScheduleOverrideType" FOREIGN KEY("ScheduleOverrideTypeId")
REFERENCES "DispatchOrder"."ScheduleOverrideType" ("ScheduleOverrideTypeId");

ALTER TABLE "DispatchOrder"."ScheduleOverride" ADD CONSTRAINT "FK_ScheduleOverride_Shift" FOREIGN KEY("ShiftId")
REFERENCES "DispatchOrder"."Shift" ("ShiftId");

ALTER TABLE "DispatchOrder"."ScheduleOverride" ADD CONSTRAINT "FK_ScheduleOverride_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId");

