-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create SupplyChangeReasonType table
-- =============================================


CREATE TABLE "DispatchOrder"."SupplyChangeReasonType"(
	"SupplyChangeReasonTypeId" serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Email" text NULL,
	"IsActive" boolean NOT NULL,
	"SendImmediately" boolean NULL,
	"Rtm" boolean NULL,
	"LeadDriver" boolean NULL,
	"SupplyCoordinator" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ADD CONSTRAINT "PK_SupplyChangeReasonType" PRIMARY KEY("SupplyChangeReasonTypeId");


ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ALTER COLUMN "IsActive" SET DEFAULT true;

ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ALTER COLUMN "SendImmediately" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ALTER COLUMN  "Rtm" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ALTER COLUMN "LeadDriver" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."SupplyChangeReasonType" ALTER COLUMN "SupplyCoordinator" SET DEFAULT false;

