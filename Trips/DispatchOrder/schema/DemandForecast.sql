-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DemandForecast table
-- =============================================


CREATE TABLE "DispatchOrder"."DemandForecast"(
	"DemandForecastId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"ProductTypeId" integer NOT NULL,
	"ForecastLoad" integer NOT NULL,
	"ForecastDateTime" timestamp(6) NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DemandForecast" ADD CONSTRAINT "PK_DemandForecast" PRIMARY KEY("DemandForecastId");

ALTER TABLE "DispatchOrder"."DemandForecast" ADD CONSTRAINT "FK_DemandForecast_ProductType" FOREIGN KEY("ProductTypeId")
REFERENCES "DispatchOrder"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DemandForecast" ADD CONSTRAINT "FK_DemandForecast_Store" FOREIGN KEY("StoreId")
REFERENCES "DispatchOrder"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

