-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Carrier table
-- =============================================


CREATE TABLE "DispatchOrder"."Carrier"(
	"CarrierId" serial NOT NULL,
	"CarrierMasterSystemId" integer NULL,
	"LegacyCarrierId" integer NULL,
	"Name" varchar(100) NULL,
	"ShortName" varchar(100) NULL,
	"Code" smallint NULL,
	"PrimaryPhoneNumber" varchar(50) NULL,
	"SecondaryPhoneNumber" varchar(50) NULL,
	"Email" text NULL,
	"Fax" varchar(50) NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Carrier" ADD CONSTRAINT "PK_Carrier" PRIMARY KEY("CarrierId");

ALTER TABLE "DispatchOrder"."Carrier" ALTER COLUMN "IsActive" SET DEFAULT false;

