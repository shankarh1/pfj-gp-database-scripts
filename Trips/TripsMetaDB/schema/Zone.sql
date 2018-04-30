-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Zone table
-- =============================================


CREATE TABLE "TripsMetaDB"."Zone"(
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

ALTER TABLE "TripsMetaDB"."Zone" ADD CONSTRAINT "PK_Zone" PRIMARY KEY("ZoneId");

