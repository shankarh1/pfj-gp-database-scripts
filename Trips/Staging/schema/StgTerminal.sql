-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgTerminal table
-- =============================================


CREATE TABLE "Staging"."StgTerminal"(
	"TerminalSysId" varchar(100) NULL,
	"Name" varchar(100) NULL,
	"Type" varchar(100) NULL,
	"ExistenceType" varchar(100) NULL,
	"Market" varchar(100) NULL,
	"Status" varchar(100) NULL,
	"Tcn" varchar(100) NULL,
	"Splc" varchar(100) NULL,
	"Address1" varchar(100) NULL,
	"Address2" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"ZipCode" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"Latitude" varchar(100) NULL,
	"Longitude" varchar(100) NULL,
	"RightAngleId" varchar(100) NULL,
	"DtnTabsName" varchar(100) NULL,
	"OwnerId" varchar(100) NULL,
	"IsMetroTerminal" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"TimeZoneName" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgTerminal" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

