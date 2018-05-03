-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create PullDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."PullDetail"(
	"PullDetailId" serial NOT NULL,
	"BillOfLadingId" integer NULL,
	"Driverid" integer NULL,
	"CarrierId" integer NULL,
	"TruckId" integer NULL,
	"PullDateTime" timestamp(6) NOT NULL,
	"GrossGallons" integer NULL,
	"NetGallons" integer NULL,
	"Exported" boolean NULL,
	"ExportedDate" timestamp(6) NULL,
	"ExportFile" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."PullDetail" ADD CONSTRAINT "PK_PullDetail" PRIMARY KEY("PullDetailId");

ALTER TABLE "DispatchOrder"."PullDetail" ALTER COLUMN "Exported" SET DEFAULT false;

