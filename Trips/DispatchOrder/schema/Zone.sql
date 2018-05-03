-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Zone table
-- =============================================


CREATE TABLE "DispatchOrder"."Zone"(
	"ZoneId" serial NOT NULL,
	"DepartmentId" integer NULL,
	"Zone" integer NULL,
	"Name" varchar(100) NULL,
	"Description" varchar(100) NULL,
	"Director" varchar(100) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Zone" ADD CONSTRAINT "PK_Zone" PRIMARY KEY("ZoneId");

ALTER TABLE "DispatchOrder"."Zone" ALTER COLUMN "IsActive" SET DEFAULT false;

