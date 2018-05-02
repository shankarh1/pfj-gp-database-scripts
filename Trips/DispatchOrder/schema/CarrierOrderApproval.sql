-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create CarrierOrderApproval table
-- =============================================


CREATE TABLE "DispatchOrder"."CarrierOrderApproval"(
	"CarrierOrderApprovalId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"CarrierSelectionReasonId" integer NOT NULL,
	"ApprovalStatus" boolean NULL,
	"ApprovalStatusUpdatedBy" integer NULL,
	"ApprovalStatusUpdatedDateTime" timestamp(6) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."CarrierOrderApproval" ADD CONSTRAINT "PK_CarrierOrderStatus" PRIMARY KEY("CarrierOrderApprovalId");

ALTER TABLE "DispatchOrder"."CarrierOrderApproval" ALTER COLUMN "ApprovalStatus" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."CarrierOrderApproval" ADD CONSTRAINT "FK_CarrierOrderStatus_CarrierSelectionReason" FOREIGN KEY("CarrierSelectionReasonId")
REFERENCES "DispatchOrder"."CarrierSelectionReason" ("CarrierSelectionReasonId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."CarrierOrderApproval" ADD CONSTRAINT "FK_CarrierOrderStatus_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId")
ON UPDATE CASCADE
ON DELETE CASCADE;

