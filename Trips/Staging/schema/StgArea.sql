-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgArea table
-- =============================================


CREATE TABLE "Staging"."StgArea"(
	"PandLAreaSystemId" varchar(100) NULL,
	"RegionSystemId" varchar(100) NULL,
	"PandLArea" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"PandLAreaDescription" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"LocationCountry" varchar(100) NULL,
	"TimeZoneId" varchar(100) NULL,
	"StateId" varchar(100) NULL,
	"PayCode" varchar(100) NULL,
	"Comment" varchar(100) NULL,
	"LawsonObjId" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgArea" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

