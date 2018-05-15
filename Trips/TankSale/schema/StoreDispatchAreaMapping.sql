-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create StoreDispatchAreaMapping table
-- =============================================


CREATE TABLE "TankSale"."StoreDispatchAreaMapping"(
	"StoreDispatchAreaMappingId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"DispatchAreaId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankSale"."StoreDispatchAreaMapping" ADD CONSTRAINT "PK_StoreDispatchAreaMapping" PRIMARY KEY("StoreDispatchAreaMappingId");

ALTER TABLE "TankSale"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_DispatchArea" FOREIGN KEY("DispatchAreaId") REFERENCES "TankSale"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TankSale"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_Store" FOREIGN KEY("StoreId") REFERENCES "TankSale"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

