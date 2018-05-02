-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgSiteLoB table
-- =============================================


CREATE TABLE "Staging"."StgSiteLoB"(
	"LineOfBusinessSystemId" varchar(100) NULL,
	"LocationId" varchar(100) NULL,
	"FleetLocationId" varchar(100) NULL,
	"LineOfBusinessType" varchar(100) NULL,
	"LineOfBusiness" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"LawsonAccountingCompany" varchar(100) NULL,
	"IsPrimaryLineOfBusiness" varchar(100) NULL,
	"PrimaryLineOfBusiness" varchar(100) NULL,
	"Address1" varchar(100) NULL,
	"Address2" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"PostalCode" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"Status" varchar(100) NULL,
	"OpenDate" varchar(100) NULL,
	"TemporaryCloseDate" varchar(100) NULL,
	"ReopenDate" varchar(100) NULL,
	"CloseDate" varchar(100) NULL,
	"PrimaryPhone" varchar(100) NULL,
	"PrimaryFax" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgSiteLoB" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

