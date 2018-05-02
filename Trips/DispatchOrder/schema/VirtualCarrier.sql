-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create VirtualCarrier table
-- =============================================


CREATE TABLE "DispatchOrder"."VirtualCarrier"(
	"VirtualCarrierId" serial NOT NULL,
	"CarrierId" integer NOT NULL,
	"LegacyCarrierId" integer NULL,
	"VirtualCarrierName" varchar(100) NULL,
	"VirtualCarrierShortName" varchar(100) NULL,
	"IsDispatchOnly" boolean NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."VirtualCarrier" ADD CONSTRAINT "PK_VirtualCarrier" PRIMARY KEY("VirtualCarrierId");

ALTER TABLE "DispatchOrder"."VirtualCarrier" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."VirtualCarrier" ALTER COLUMN "IsDispatchOnly" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."VirtualCarrier" ADD CONSTRAINT "FK_VirtualCarrier_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "DispatchOrder"."Carrier" ("CarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

