-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgZone table
-- =============================================


CREATE TABLE "Staging"."StgZone"(
	"ZoneSystemId" varchar(100) NULL,
	"DepartmentSystemId" varchar(100) NULL,
	"Zone" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"DivisionName" varchar(100) NULL,
	"ZoneDescription" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"ZoneDirector" varchar(100) NULL,
	"LawsonObjId" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgZone" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

