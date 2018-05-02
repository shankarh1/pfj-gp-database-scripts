-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgTerminalLoO table
-- =============================================


CREATE TABLE "Staging"."StgTerminalLoO"(
	"LooSysId" varchar(100) NULL,
	"TerminalSysId" varchar(100) NULL,
	"TerminalExistenceType" varchar(100) NULL,
	"FleetLocationId" varchar(100) NULL,
	"AxxisGuid" varchar(100) NULL,
	"AxxisTerminalCode" varchar(100) NULL,
	"AxxisCustomerTerminalCode" varchar(100) NULL,
	"AxxisTerminalName" varchar(100) NULL,
	"AxxisCustomerTerminalName" varchar(100) NULL,
	"AxxisTerminalStatus" varchar(100) NULL,
	"AxxisTerminalOpenDate" varchar(100) NULL,
	"AxxisTerminalEndDate" varchar(100) NULL,
	"TripsTerminId" varchar(100) NULL,
	"TripsTerminalLongName" varchar(100) NULL,
	"TripsTerminalShortName" varchar(100) NULL,
	"TripsTerminalType" varchar(100) NULL,
	"TripsTerminalStatus" varchar(100) NULL,
	"TripsTerminalOpenDate" varchar(100) NULL,
	"TripsTerminalEndDate" varchar(100) NULL,
	"GameplanTerGuid" varchar(100) NULL,
	"GameplanTerminalStatus" varchar(100) NULL,
	"FuelSmartIId" varchar(100) NULL,
	"FuelSmartTerminalName" varchar(100) NULL,
	"FuelSmartStatus" varchar(100) NULL,
	"FuelSmartEndDate" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgTerminalLoO" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

