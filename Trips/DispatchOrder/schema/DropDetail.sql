-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DropDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."DropDetail"(
	"DropDetailId" serial NOT NULL,
	"PullDetailId" integer NULL,
	"OrderItemId" integer NULL,
	"DriverId" integer NULL,
	"DropDateTime" timestamp(6) NOT NULL,
	"GrossGallons" integer NOT NULL,
	"FrProductId" integer NOT NULL,
	"ColdFlowAdditive" integer NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DropDetail" ADD CONSTRAINT "PK_DropDetail" PRIMARY KEY("DropDetailId");

ALTER TABLE "DispatchOrder"."DropDetail" ADD CONSTRAINT "FK_DropDetail_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DropDetail" ADD CONSTRAINT "FK_DropDetail_OrderItem" FOREIGN KEY("OrderItemId")
REFERENCES "DispatchOrder"."OrderItem" ("OrderItemId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DropDetail" ADD CONSTRAINT "FK_DropDetail_PullDetail" FOREIGN KEY("PullDetailId")
REFERENCES "DispatchOrder"."PullDetail" ("PullDetailId")
ON UPDATE CASCADE
ON DELETE CASCADE;

