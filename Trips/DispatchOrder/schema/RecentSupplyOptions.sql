-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create RecentSupplyOptions table
-- =============================================


CREATE TABLE "DispatchOrder"."RecentSupplyOptions"(
	"RecentSupplyOptionsId" serial NOT NULL,
	"OrderItemId" integer NULL,
	"DispatchAreaId" integer NOT NULL,
	"ProductTypeId" integer NOT NULL,
	"TerminalId" integer NOT NULL,
	"SupplierId" integer NOT NULL,
	"ProductId" integer NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "PK_RecentSupplyOptions" PRIMARY KEY("RecentSupplyOptionsId");

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "DispatchOrder"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_OrderItem" FOREIGN KEY("OrderItemId")
REFERENCES "DispatchOrder"."OrderItem" ("OrderItemId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_Product" FOREIGN KEY("ProductId")
REFERENCES "DispatchOrder"."Product" ("ProductId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_ProductType" FOREIGN KEY("ProductTypeId")
REFERENCES "DispatchOrder"."ProductType" ("ProductTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_Supplier" FOREIGN KEY("SupplierId")
REFERENCES "DispatchOrder"."Supplier" ("SupplierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."RecentSupplyOptions" ADD CONSTRAINT "FK_RecentSupplyOptions_Terminal" FOREIGN KEY("TerminalId")
REFERENCES "DispatchOrder"."Terminal" ("TerminalId")
ON UPDATE CASCADE
ON DELETE CASCADE;

