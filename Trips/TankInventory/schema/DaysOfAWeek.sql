-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create DaysOfAWeek table
-- =============================================


CREATE TABLE "TankInventory"."DaysOfAWeek"(
	"DaysOfAWeekId" serial NOT NULL,
	"Name" varchar(9) NOT NULL,
	"ShortName" varchar(3) NOT NULL
);

ALTER TABLE "TankInventory"."DaysOfAWeek" ADD CONSTRAINT "PK_DaysOfAWeek" PRIMARY KEY("DaysOfAWeekId");

