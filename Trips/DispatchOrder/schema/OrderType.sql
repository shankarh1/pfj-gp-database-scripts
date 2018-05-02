-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderType table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderType"(
	"OrderTypeId" serial NOT NULL,
	"Code" varchar(6) NOT NULL,
	"Description" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderType" ADD CONSTRAINT "PK_OrderType" PRIMARY KEY("OrderTypeId")

