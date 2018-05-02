-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderStatusType table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderStatusType"(
	"OrderStatusTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Description" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderStatusType" ADD CONSTRAINT "PK_tblOrderStatusType" PRIMARY KEY("OrderStatusTypeId");

