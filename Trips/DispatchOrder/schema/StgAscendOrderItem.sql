-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StgAscendOrderItem table
-- =============================================


CREATE TABLE "DispatchOrder"."StgAscendOrderItem"(
	"SystemAscendItemId" serial NOT NULL,
	"SysTrxNo" decimal(18, 0) NULL,
	"SysTrxLine" integer NULL,
	"Product" varchar(50) NULL,
	"Gallons" decimal(18, 0) NULL,
	"Supplier" varchar(100) NULL,
	"Terminal_Code" varchar(50) NULL,
	"Supplier_Code" varchar(50) NULL
);

ALTER TABLE "DispatchOrder"."StgAscendOrderItem" ADD CONSTRAINT "PK_StgAscendOrderItem" PRIMARY KEY("SystemAscendItemId");

