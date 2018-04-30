-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Carrier table
-- =============================================


CREATE TABLE "TripsMetaDB"."Carrier"(
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

ALTER TABLE "TripsMetaDB"."Carrier" ADD CONSTRAINT "PK_Carrier" PRIMARY KEY("CarrierId");

