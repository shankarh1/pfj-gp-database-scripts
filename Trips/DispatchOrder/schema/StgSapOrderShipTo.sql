-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StgSapOrderShipTo table
-- =============================================


CREATE TABLE "DispatchOrder"."StgSapOrderShipTo"(
	"SapOrderShipToId" serial NOT NULL,
	"ShipToCode" varchar(50) NOT NULL,
	"DispatchAreaId" integer NULL,
	"Street" varchar(100) NULL,
	"City" varchar(50) NULL,
	"State" varchar(5) NULL,
	"PostalCode" varchar(10) NULL,
	"Country" varchar(50) NULL,
	"ShipToId" integer NULL,
	"Pump" boolean NULL,
	"Latitude" decimal(18, 6) NULL,
	"Longitude" decimal(18, 6) NULL,
	"Locked" boolean NULL
);

ALTER TABLE "DispatchOrder"."StgSapOrderShipTo" ADD CONSTRAINT "PK_StgSapOrderShipTo" PRIMARY KEY("SapOrderShipToId");

ALTER TABLE "DispatchOrder"."StgSapOrderShipTo" ALTER COLUMN "Pump" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."StgSapOrderShipTo" ALTER COLUMN "Locked" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."StgSapOrderShipTo" ADD CONSTRAINT "FK_StgSapOrderShipTo_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "DispatchOrder"."DispatchArea" ("DispatchAreaId");

ALTER TABLE "DispatchOrder"."StgSapOrderShipTo" ADD CONSTRAINT "FK_StgSapOrderShipTo_ShipTo" FOREIGN KEY("ShipToId")
REFERENCES "DispatchOrder"."ShipTo" ("ShipToId");

