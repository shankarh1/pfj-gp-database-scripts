-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverSchedule table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverSchedule"(
	"DriverScheduleId" serial NOT NULL,
	"DriverId" integer NOT NULL,
	"StartDate" date NOT NULL,
	"EndDate" date NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DriverSchedule" ADD CONSTRAINT "PK_DriverSchedule" PRIMARY KEY("DriverScheduleId");

ALTER TABLE "DispatchOrder"."DriverSchedule" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DriverSchedule" ADD CONSTRAINT "FK_DriverSchedule_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

