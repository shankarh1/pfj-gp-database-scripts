-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create TripsCarrier table
-- =============================================


CREATE TABLE "DispatchOrder"."TripsCarrier"(
	"TripsCarrierId" serial NOT NULL,
	"CarrierId" integer NOT NULL,
	"VirtualCarrierId" integer NULL,
	"Name" varchar(100) NULL,
	"ShortName" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."TripsCarrier" ADD CONSTRAINT "PK_TripsCarrier" PRIMARY KEY("TripsCarrierId");

ALTER TABLE "DispatchOrder"."TripsCarrier" ADD CONSTRAINT "FK_TripsCarrier_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "DispatchOrder"."Carrier" ("CarrierId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE "DispatchOrder"."TripsCarrier" ADD CONSTRAINT "FK_TripsCarrier_VirtualCarrier" FOREIGN KEY("VirtualCarrierId")
REFERENCES "DispatchOrder"."VirtualCarrier" ("VirtualCarrierId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

