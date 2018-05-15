-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create TimeZone table
-- =============================================


CREATE TABLE "TankSale"."TimeZone"(
	"TimeZoneId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Code" varchar(4) NOT NULL,
	"Offset" integer NOT NULL,
	"IsDstApplicable" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankSale"."TimeZone" ADD CONSTRAINT "PK_TimeZone" PRIMARY KEY("TimeZoneId");

ALTER TABLE "TankSale"."TimeZone" ALTER COLUMN "IsDstApplicable" SET DEFAULT false;

