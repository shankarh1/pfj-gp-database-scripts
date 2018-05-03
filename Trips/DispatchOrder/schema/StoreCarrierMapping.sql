-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StoreCarrierMapping table
-- =============================================


CREATE TABLE "DispatchOrder"."StoreCarrierMapping"(
	"StoreCarrierMappingId" serial NOT NULL,
	"StoreId" integer NULL,
	"CarrierId" integer NULL,
	"TripsCarrierId" integer NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."StoreCarrierMapping" ADD CONSTRAINT "PK_StoreCarrierMapping" PRIMARY KEY("StoreCarrierMappingId");

ALTER TABLE "DispatchOrder"."StoreCarrierMapping" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."StoreCarrierMapping" ADD CONSTRAINT "FK_StoreCarrierMapping_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "DispatchOrder"."Carrier" ("CarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."StoreCarrierMapping" ADD CONSTRAINT "FK_StoreCarrierMapping_Store" FOREIGN KEY("StoreId")
REFERENCES "DispatchOrder"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

