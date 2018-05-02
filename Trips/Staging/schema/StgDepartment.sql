-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgDepartment table
-- =============================================


CREATE TABLE "Staging"."StgDepartment"(
	"DepartmentSystemId" varchar(100) NULL,
	"CompanySystemId" varchar(100) NULL,
	"Department" varchar(100) NULL,
	"IsActive" varchar(100) NULL,
	"DepartmentDescription" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"LawsonObjId" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgDepartment" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

