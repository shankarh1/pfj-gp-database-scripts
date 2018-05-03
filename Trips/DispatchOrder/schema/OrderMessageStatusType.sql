-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderMessageStatusType table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderMessageStatusType"(
	"OrderMessageStatusTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderMessageStatusType" ADD CONSTRAINT "PK_OrderMessageStatusType" PRIMARY KEY("OrderMessageStatusTypeId");

