-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgRegionSupervisor table
-- =============================================


CREATE TABLE "Staging"."StgRegionSupervisor"(
	"RegionSupervisorSystemId" varchar(100) NULL,
	"EmployeeNumber" varchar(100) NULL,
	"FirstName" varchar(100) NULL,
	"LastName" varchar(100) NULL,
	"Email" varchar(100) NULL,
	"VoiceMail" varchar(100) NULL,
	"Phone" varchar(100) NULL,
	"Fax" varchar(100) NULL,
	"WirelessAircard" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgRegionSupervisor" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

