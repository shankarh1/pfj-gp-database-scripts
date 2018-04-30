-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgCompany table
-- =============================================


CREATE TABLE "Staging"."StgCompany"(
	"CompanySystemId" varchar(100) NULL,
	"Company" varchar(100) NULL,
	"CompanyDescription" varchar(100) NULL,
	"FeedDateTime" timestamp NOT NULL
);

ALTER TABLE "Staging"."StgCompany" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

