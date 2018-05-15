-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create User table
-- =============================================


CREATE TABLE "TripsUser"."User"(
	"UserId" serial NOT NULL,
	"LegacyUserId" varchar(100) NULL,
	"FirstName" varchar(100) NOT NULL,
	"MiddleName" varchar(100) NULL,
	"LastName" varchar(100) NULL,
	"WindowsLoginName" varchar(100) NOT NULL,
	"Email" varchar(100) NULL,
	"PhoneNumber" varchar(15) NULL,
	"Domain" varchar(50) NULL,
	"AppDirectory" varchar(50) NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."User" ADD CONSTRAINT "PK_User" PRIMARY KEY("UserId");

ALTER TABLE "TripsUser"."User" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TripsUser"."User" ADD CONSTRAINT "AK_User" UNIQUE("WindowsLoginName");

