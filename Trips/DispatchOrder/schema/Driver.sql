-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Driver table
-- =============================================


CREATE TABLE "DispatchOrder"."Driver"(
	"DriverId" serial NOT NULL,
	"LegacyDriverId" integer NULL,
	"DriverTypeId" integer NULL,
	"DispatchAreaId" integer NULL,
	"PandLAreaId" integer NULL,
	"DomicileId" integer NULL,
	"FirstName" varchar(100) NULL,
	"MiddleName" varchar(100) NULL,
	"LastName" varchar(100) NULL,
	"NameSuffix" varchar(100) NULL,
	"GoesByName" varchar(100) NULL,
	"EmpNumber" varchar(100) NULL,
	"Company" varchar(100) NULL,
	"PrimaryPhoneNumber" varchar(50) NULL,
	"SecondaryPhoneNumber" varchar(50) NULL,
	"Email" varchar(255) NULL,
	"BirthDate" varchar(50) NULL,
	"JoiningDate" timestamp NULL,
	"LicenseNumber" varchar(100) NULL,
	"LicenseState" varchar(100) NULL,
	"Recruiter" varchar(100) NULL,
	"StipendPhoneNumber" varchar(100) NULL,
	"EmergencyContact" varchar(500) NULL,
	"LawsonAddress1" varchar(500) NULL,
	"LawsonAddress2" varchar(500) NULL,
	"LawsonCity" varchar(100) NULL,
	"LawsonState" varchar(100) NULL,
	"LawsonZipCode" varchar(100) NULL,
	"MailingAddress1" varchar(500) NULL,
	"MailingAddress2" varchar(500) NULL,
	"MailingCity" varchar(100) NULL,
	"MailingState" varchar(100) NULL,
	"MailingZipCode" varchar(100) NULL,
	"FedexAddress1" varchar(500) NULL,
	"FedexAddress2" varchar(500) NULL,
	"FedexCity" varchar(100) NULL,
	"FedexState" varchar(100) NULL,
	"FedexZipCode" varchar(100) NULL,
	"IsActive" boolean  NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Driver" ADD CONSTRAINT "PK_Driver" PRIMARY KEY("DriverId");

ALTER TABLE "DispatchOrder"."Driver" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."Driver" ADD CONSTRAINT "FK_Driver_DriverType" FOREIGN KEY("DriverTypeId") REFERENCES "DispatchOrder"."DriverType" ("DriverTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

