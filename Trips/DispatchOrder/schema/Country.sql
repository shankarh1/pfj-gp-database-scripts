-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Country table
-- =============================================


CREATE TABLE "DispatchOrder"."Country"(
	"CountryId" serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Code" varchar(2) NOT NULL
);

ALTER TABLE "DispatchOrder"."Country" ADD CONSTRAINT "PK_Country" PRIMARY KEY("CountryId");

ALTER TABLE "DispatchOrder"."Country" ADD CONSTRAINT "AK_Code" UNIQUE("Code");

ALTER TABLE "DispatchOrder"."Country" ADD CONSTRAINT "AK_Name" UNIQUE("Name");

