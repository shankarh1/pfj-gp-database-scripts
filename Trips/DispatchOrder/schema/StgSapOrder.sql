-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StgSapOrder table
-- =============================================


CREATE TABLE "DispatchOrder"."StgSapOrder"(
	"OrderNumber" serial NOT NULL,
	"SalesOrderNumber" varchar(50) NULL,
	"SalesOrderType" varchar(50) NULL,
	"SalesOrg" varchar(50) NULL,
	"SalesOrgDesc" varchar(50) NULL,
	"SoldToCode" varchar(50) NULL,
	"SoldToDesc" varchar(50) NULL,
	"ShipToCode" varchar(50) NULL,
	"ShipToDesc" varchar(50) NULL,
	"PayerCode" varchar(50) NULL,
	"PayerDesc" varchar(50) NULL,
	"Supplier" varchar(50) NULL,
	"SupplierName" varchar(50) NULL,
	"SalesOfficeCode" varchar(50) NULL,
	"SalesOfficeDesc" varchar(50) NULL,
	"SalesGroupCode" varchar(50) NULL,
	"SalesGroupDesc" varchar(50) NULL,
	"DistributionChannel" varchar(50) NULL,
	"DistributionChannelDesc" varchar(50) NULL,
	"RequestedDeliveryDate" timestamp NOT NULL,
	"CreatedDate" timestamp NOT NULL,
	"Carrier" varchar(50) NULL,
	"DeliveryZone" varchar(50) NULL,
	"DriverNumber" varchar(50) NULL,
	"DriverName" varchar(50) NULL,
	"TotalValueOfSo" varchar(50) NULL,
	"Currency" varchar(50) NULL,
	"UpdateFlag" varchar(50) NULL,
	"LoadingNumber" varchar(50) NULL,
	"DeliveryTicketNote" text NULL,
	"RequestedDeliveryTime" varchar(50) NULL,
	"DrivingDirections" text NULL
);

ALTER TABLE "DispatchOrder"."StgSapOrder" ADD CONSTRAINT "PK_SapOrderHeader" PRIMARY KEY("OrderNumber");

