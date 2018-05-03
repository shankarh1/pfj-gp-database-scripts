-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DispatchAreaCarrierMapping table
-- =============================================


CREATE TABLE "DispatchOrder"."DispatchAreaCarrierMapping"(
	"DispatchAreaCarrierMappingId" serial NOT NULL,
	"DispatchAreaId" integer NULL,
	"CarrierId" integer NULL,
	"TripsCarrierId" integer NULL,
	"IsShownAlways" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DispatchAreaCarrierMapping" ADD CONSTRAINT "PK_DispatchAreaCarrierMapping" PRIMARY KEY("DispatchAreaCarrierMappingId");

ALTER TABLE "DispatchOrder"."DispatchAreaCarrierMapping" ALTER COLUMN "IsShownAlways" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DispatchAreaCarrierMapping" ADD CONSTRAINT "FK_DispatchAreaCarrierMapping_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "DispatchOrder"."Carrier" ("CarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DispatchAreaCarrierMapping" ADD CONSTRAINT "FK_DispatchAreaCarrierMapping_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "DispatchOrder"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

