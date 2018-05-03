-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverNominate table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverNominate"(
	"DriverNominateId" serial NOT NULL,
	"DriverId" integer NOT NULL,
	"Comments" varchar(500) NULL,
	"IsDeleted" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "DispatchOrder"."DriverNominate" ADD CONSTRAINT "PK_DriverNominate" PRIMARY KEY("DriverNominateId");

ALTER TABLE "DispatchOrder"."DriverNominate" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DriverNominate" ADD CONSTRAINT "FK_DriverNominate_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

