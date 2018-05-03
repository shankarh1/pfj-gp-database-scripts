-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierSelectionReason table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierSelectionReason"(
	"CarrierSelectionReasonId" serial NOT NULL,
	"Reason" varchar(100) NOT NULL,
	"IsActive" boolean NOT NULL
);

ALTER TABLE "DispatchOrder"."CarrierSelectionReason" ADD CONSTRAINT "PK_CarrierSelectionReason" PRIMARY KEY("CarrierSelectionReasonId");

ALTER TABLE "DispatchOrder"."CarrierSelectionReason" ALTER COLUMN "IsActive" SET DEFAULT false;

