-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderCreationType table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderCreationType"(
	"OrderCreationTypeId" serial NOT NULL,
	"Code" varchar(6) NOT NULL,
	"Description" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderCreationType" ADD CONSTRAINT "PK_OrderCreationType" PRIMARY KEY("OrderCreationTypeId")

