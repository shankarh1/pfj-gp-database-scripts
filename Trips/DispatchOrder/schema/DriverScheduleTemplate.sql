-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverScheduleTemplate table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverScheduleTemplate"(
	"DriverScheduleTemplateId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"NumberOfWorkingDays" integer NOT NULL,
	"NumberOfNonWorkingDays" integer NOT NULL
);

ALTER TABLE "DispatchOrder"."DriverScheduleTemplate" ADD CONSTRAINT "PK_DriverScheduleTemplate" PRIMARY KEY("DriverScheduleTemplateId");

