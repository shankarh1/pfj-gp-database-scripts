-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create ScheduleOverrideType table
-- =============================================


CREATE TABLE "DispatchOrder"."ScheduleOverrideType"(
	"ScheduleOverrideTypeId" serial NOT NULL,
	"ScheduleOverrideTypeName" varchar(100) NOT NULL,
	"IsInclusion" boolean NULL,
	"IsActive" boolean NULL
);

ALTER TABLE "DispatchOrder"."ScheduleOverrideType" ADD CONSTRAINT "PK_ScheduleOverrideType" PRIMARY KEY("ScheduleOverrideTypeId");

ALTER TABLE "DispatchOrder"."ScheduleOverrideType" ALTER COLUMN "IsInclusion" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."ScheduleOverrideType" ALTER COLUMN "IsActive" SET DEFAULT false;
