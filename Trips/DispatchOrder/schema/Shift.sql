-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Shift table
-- =============================================


CREATE TABLE "DispatchOrder"."Shift"(
	"ShiftId" serial NOT NULL,
	"ShiftName" varchar(20) NOT NULL,
	"ColorCode" varchar(50) NOT NULL,
	"StartTime" time(6) NOT NULL,
	"EndTime" time(6) NOT NULL
);

ALTER TABLE "DispatchOrder"."Shift" ADD CONSTRAINT "PK_Shift" PRIMARY KEY("ShiftId");

