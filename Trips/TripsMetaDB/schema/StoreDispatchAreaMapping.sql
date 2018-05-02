-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StoreDispatchAreaMapping table
-- =============================================


CREATE TABLE "TripsMetaDB"."StoreDispatchAreaMapping"(
	"StoreDispatchAreaMappingId" serial NOT NULL,
	"StoreId" integer NOT NULL,
	"DispatchAreaId" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."StoreDispatchAreaMapping" ADD CONSTRAINT "PK_StoreDispatchAreaMapping" PRIMARY KEY("StoreDispatchAreaMappingId");

ALTER TABLE "TripsMetaDB"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_DispatchArea" FOREIGN KEY("DispatchAreaId") REFERENCES "TripsMetaDB"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."StoreDispatchAreaMapping" ADD CONSTRAINT "FK_StoreDispatchAreaMapping_Store" FOREIGN KEY("StoreId") REFERENCES "TripsMetaDB"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

