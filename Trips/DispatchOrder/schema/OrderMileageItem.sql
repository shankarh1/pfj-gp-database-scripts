-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderMileageItem table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderMileageItem"(
	"OrderMileageItemId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"StartLocationId" integer NULL,
	"EndLocationId" integer NULL,
	"SequenceNumber" integer NULL,
	"StartLatitude" numeric(12, 8) NULL,
	"StartLongitude" numeric(12, 8) NULL,
	"EndLatitude" numeric(12, 8) NULL,
	"EndLongitude" numeric(12, 8) NULL,
	"Distance" bigint NULL,
	"Time" varchar(15) NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."OrderMileageItem" ADD CONSTRAINT "PK_OrderMileageItem" PRIMARY KEY("OrderMileageItemId");

ALTER TABLE "DispatchOrder"."OrderMileageItem" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."OrderMileageItem" ADD CONSTRAINT "FK_OrderMileageItem_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId");

