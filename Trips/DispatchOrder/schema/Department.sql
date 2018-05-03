-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Department table
-- =============================================


CREATE TABLE "DispatchOrder"."Department"(
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

ALTER TABLE "DispatchOrder"."Department" ADD CONSTRAINT "PK_Department" PRIMARY KEY("DepartmentId");

ALTER TABLE "DispatchOrder"."Department" ALTER COLUMN "IsActive" SET DEFAULT false;

