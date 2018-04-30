-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgDomicile table
-- =============================================


CREATE TABLE "Staging"."StgDomicile"(
	"DomicileSystemId" varchar(100) NULL,
	"DomicileDescription" varchar(500) NULL,
	"LocationType" varchar(100) NULL,
	"TerminalSystemId" varchar(100) NULL,
	"B2BSiteSystemId" varchar(100) NULL,
	"B2CLobSystemId" varchar(100) NULL,
	"LawsonCode" varchar(100) NULL,
	"FleetLocationId" varchar(100) NULL,
	"Latitude" varchar(100) NULL,
	"Longitude" varchar(100) NULL,
	"Address1" varchar(500) NULL,
	"Address2" varchar(500) NULL,
	"City" varchar(100) NULL,
	"County" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Postcode" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"TimeZoneName" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgDomicile" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

