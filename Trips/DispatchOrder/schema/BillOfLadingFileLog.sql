-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create BillOfLadingFileLog table
-- =============================================


CREATE TABLE "DispatchOrder"."BillOfLadingFileLog"(
	"BillOfLadingFileLogId" serial NOT NULL,
	"BillOfLadingId" integer NULL,
	"Type" varchar(1) NOT NULL,
	"FileName" text NOT NULL,
	"BatchNumber" varchar(50) NOT NULL,
	"CopyTimestampS" timestamp(6) NULL,
	"CopyTimestampMobius" timestamp(6) NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."BillOfLadingFileLog" ADD CONSTRAINT "PK_BillOfLadingFileLog" PRIMARY KEY("BillOfLadingFileLogId");

ALTER TABLE "DispatchOrder"."BillOfLadingFileLog" ADD CONSTRAINT "FK_BillOfLadingFileLog_BillOfLading" FOREIGN KEY("BillOfLadingId") REFERENCES "DispatchOrder"."BillOfLading" ("BillOfLadingId")
ON UPDATE CASCADE
ON DELETE CASCADE;

