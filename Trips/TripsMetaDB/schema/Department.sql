-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Department table
-- =============================================


CREATE TABLE "TripsMetaDB"."Department"(
	"DepartmentId" serial NOT NULL,
	"CompanyId" integer NULL,
	"Department" integer NULL,
	"Description" varchar(100) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Department" ADD CONSTRAINT "PK_Department" PRIMARY KEY("DepartmentId");

