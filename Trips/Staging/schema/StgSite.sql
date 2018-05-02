-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgSite table
-- =============================================


CREATE TABLE "Staging"."StgSite"(
	"SiteSystemId" varchar(100) NULL,
	"LocationId" varchar(100) NULL,
	"FleetLocationId" varchar(100) NULL,
	"SiteStatus" varchar(100) NULL,
	"Address1" varchar(100) NULL,
	"Address2" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"PostalCode" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"AddressLatitude" varchar(100) NULL,
	"AddressLongitude" varchar(100) NULL,
	"UnitsOfMeasure" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"TimeZoneName" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgSite" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

