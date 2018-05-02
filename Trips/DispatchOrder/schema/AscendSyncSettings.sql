-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create AscendSyncSettings table
-- =============================================


CREATE TABLE "DispatchOrder"."AscendSyncSettings"(
	"AscendSyncId" serial NOT NULL,
	"DaysPrior" integer NOT NULL,
	"DaysAfter" integer NOT NULL
);

ALTER TABLE "DispatchOrder"."AscendSyncSettings" ADD CONSTRAINT "PK_AscendSyncSettings" PRIMARY KEY("AscendSyncId");

