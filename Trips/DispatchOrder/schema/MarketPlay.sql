-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create MarketPlay table
-- =============================================


CREATE TABLE "DispatchOrder"."MarketPlay"(
	"MarketPlayId" serial NOT NULL,
	"MarketPlayTypeId" integer NOT NULL,
	"OrderId" integer NOT NULL,
	"TerminalId" integer NULL,
	"SupplierId" integer NULL,
	"DriverTimeInMinutes" integer NULL,
	"Comments" text NULL,
	"MarketPlayDateTime" timestamp(6) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."MarketPlay" ADD CONSTRAINT "PK_MarketPlay" PRIMARY KEY("MarketPlayId");

ALTER TABLE "DispatchOrder"."MarketPlay" ADD CONSTRAINT "FK_MarketPlay_MarketPlayType" FOREIGN KEY("MarketPlayTypeId")
REFERENCES "DispatchOrder"."MarketPlayType" ("MarketPlayTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."MarketPlay" ADD CONSTRAINT "FK_MarketPlay_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."MarketPlay" ADD CONSTRAINT "FK_MarketPlay_Supplier" FOREIGN KEY("SupplierId")
REFERENCES "DispatchOrder"."Supplier" ("SupplierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."MarketPlay" ADD CONSTRAINT "FK_MarketPlay_Terminal" FOREIGN KEY("TerminalId")
REFERENCES "DispatchOrder"."Terminal" ("TerminalId")
ON UPDATE CASCADE
ON DELETE CASCADE;

