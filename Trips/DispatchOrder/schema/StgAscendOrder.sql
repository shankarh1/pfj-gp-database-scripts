-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StgAscendOrder table
-- =============================================


CREATE TABLE "DispatchOrder"."StgAscendOrder"(
	"SystemAscendId" serial NOT NULL,
	"SysTrxNo" decimal(18, 0) NULL,
	"OrderNo" varchar(20) NULL,
	"PoNo" varchar(50) NULL,
	"BolNo" varchar(20) NULL,
	"FoNo" varchar(50) NULL,
	"ShipToName" varchar(50) NULL,
	"ShipToId" integer NULL,
	"CustomerName" varchar(50) NULL,
	"CustomerAcctNbr" integer NULL,
	"AscendStatus" integer NULL,
	"Notes" varchar(300) NULL,
	"DeliveryStartTime" timestamp NULL,
	"DeliverByDateTime" timestamp NULL,
	"DeliveryStartDateTime" timestamp NULL,
	"DeliveryEndDateTime" timestamp NULL,
	"SentToPeopleNet" boolean NULL,
	"CompanyCode" varchar(10) NULL,
	"Phone" varchar(10) NULL,
	"UpdateFromAscend" boolean NULL,
	"Address" varchar(300) NULL,
	"CreatedBy" varchar(50) NULL,
	"Cancelled" varchar(10) NULL,
	"DriverEmpNo" integer NULL,
	"VehicleCode" varchar(50) NULL,
	"DefCarrierId" integer NULL,
	"DispatchAreaId" integer NULL
);

ALTER TABLE "DispatchOrder"."StgAscendOrder" ADD CONSTRAINT "PK_StgAscend" PRIMARY KEY("SystemAscendId");

ALTER TABLE "DispatchOrder"."StgAscendOrder" ALTER COLUMN "SentToPeopleNet" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."StgAscendOrder" ALTER COLUMN "UpdateFromAscend" SET DEFAULT false;

