-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderItemStatusType table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderItemStatusType"(
	"OrderItemStatusTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Description" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderItemStatusType" ADD CONSTRAINT "PK_OrderItemStatusType" PRIMARY KEY("OrderItemStatusTypeId");

