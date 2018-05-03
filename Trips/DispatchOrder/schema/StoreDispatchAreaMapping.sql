-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StoreDispatchAreaMapping table
-- =============================================


CREATE TABLE "DispatchOrder"."StoreDispatchAreaMapping"(
	"StoreDispatchAreaMappingId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"DispatchAreaId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."StoreDispatchAreaMapping" ADD CONSTRAINT "PK_StoreDispatchAreaMapping" PRIMARY KEY("StoreDispatchAreaMappingId");

ALTER TABLE "DispatchOrder"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_DispatchArea" FOREIGN KEY("DispatchAreaId") REFERENCES "DispatchOrder"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_Store" FOREIGN KEY("StoreId") REFERENCES "DispatchOrder"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

