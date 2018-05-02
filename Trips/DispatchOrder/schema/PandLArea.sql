-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create PandLArea table
-- =============================================


CREATE TABLE "DispatchOrder"."PandLArea"(
	"PandLAreaId" serial NOT NULL,
	"LegacyPandLAreaId" integer NULL,
	"RegionId" integer NULL,
	"TimeZoneId" integer NULL,
	"PandLArea" varchar(50) NULL,
	"Description" varchar(100) NULL,
	"Comment" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."PandLArea" ADD CONSTRAINT "PK_PandLArea" PRIMARY KEY("PandLAreaId");

ALTER TABLE "DispatchOrder"."PandLArea" ALTER COLUMN "IsActive" SET DEFAULT false;

