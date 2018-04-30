-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create TimeZone table
-- =============================================


CREATE TABLE "TripsMetaDB"."TimeZone"(
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

ALTER TABLE "TripsMetaDB"."TimeZone" ADD CONSTRAINT "PK_TimeZone" PRIMARY KEY("TimeZoneId");

