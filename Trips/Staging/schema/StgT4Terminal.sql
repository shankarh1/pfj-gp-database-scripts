-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgT4Terminal table
-- =============================================


CREATE TABLE "Staging"."StgT4Terminal"(
	"T4SystemId" varchar(100) NULL,
	"TerminalSystemRefId" varchar(100) NULL,
	"T4LocationCode" varchar(100) NULL,
	"TankerCode" varchar(100) NULL,
	"LocationDescription" varchar(100) NULL,
	"TankerDescription" varchar(100) NULL,
	"Pipeline" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgT4Terminal" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

