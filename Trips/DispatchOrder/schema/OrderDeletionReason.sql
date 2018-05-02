-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderDeletionReason table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderDeletionReason"(
	"OrderDeletionReasonId" serial NOT NULL,
	"LegacyOrderDeletionReasonId" integer NULL,
	"Reason" varchar(50) NOT NULL,
	"IsCommentRequired" integer NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderDeletionReason" ADD CONSTRAINT "PK_OrderDeletionReason" PRIMARY KEY("OrderDeletionReasonId");

