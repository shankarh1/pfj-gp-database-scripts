-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgB2BSite table
-- =============================================


CREATE TABLE "Staging"."StgB2BSite"(
	"SiteSystemId" varchar(100) NULL,
	"LocationId" varchar(100) NULL,
	"FacilityTypeReferenceId" varchar(100) NULL,
	"StatusReferenceId" varchar(100) NULL,
	"OpenDate" varchar(100) NULL,
	"ClosedDate" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"Address1" varchar(100) NULL,
	"Address2" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"PostalCode" varchar(100) NULL,
	"Interstate" varchar(100) NULL,
	"AddressLatitude" varchar(100) NULL,
	"AddressLongitude" varchar(100) NULL,
	"DieselRoutingLatitude" varchar(100) NULL,
	"DieselRoutingLongitude" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgB2BSite" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

