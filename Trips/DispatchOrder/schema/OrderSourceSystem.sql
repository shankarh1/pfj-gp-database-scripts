-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderSourceSystem table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderSourceSystem"(
	"OrderSourceSystemId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Description" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."OrderSourceSystem" ADD CONSTRAINT "PK_tblOrderSourceSystem" PRIMARY KEY("OrderSourceSystemId");

