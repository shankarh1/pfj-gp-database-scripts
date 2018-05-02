-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create TimeZone table
-- =============================================


CREATE TABLE "DispatchOrder"."TimeZone"(
	"TimeZoneId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Code" varchar(4) NOT NULL,
	"Offset" integer NOT NULL,
	"IsDstApplicable" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."TimeZone" ADD CONSTRAINT "PK_TimeZone" PRIMARY KEY("TimeZoneId");

ALTER TABLE "DispatchOrder"."TimeZone" ALTER COLUMN "IsDstApplicable" SET DEFAULT false;

