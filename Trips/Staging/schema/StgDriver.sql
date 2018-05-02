-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgDriver table
-- =============================================


CREATE TABLE "Staging"."StgDriver"(
	"DriverId" varchar(100) NOT NULL,
	"TripsDriverId" varchar(100) NULL,
	"DriverType" varchar(100) NULL,
	"PandLAreaId" varchar(100) NULL,
	"DomicileId" varchar(100) NULL,
	"Company" varchar(100) NULL,
	"TimeZone" varchar(100) NULL,
	"LicenseStateId" varchar(100) NULL,
	"EmpNumber" varchar(100) NULL,
	"FirstName" varchar(100) NULL,
	"MiddleName" varchar(100) NULL,
	"LastName" varchar(100) NULL,
	"NameSuffix" varchar(100) NULL,
	"GoesbyName" varchar(100) NULL,
	"DomicileName" varchar(100) NULL,
	"PrimaryPhoneNumber" varchar(100) NULL,
	"SecondaryPhoneNumber" varchar(100) NULL,
	"EmergencyContact" varchar(100) NULL,
	"StipendPhoneNumber" varchar(100) NULL,
	"StipendPhoneOffDate" varchar(100) NULL,
	"Email" varchar(100) NULL,
	"Last4Ssn" varchar(100) NULL,
	"AnniversaryDate" varchar(100) NULL,
	"Tenure" varchar(100) NULL,
	"LicenseNumber" varchar(100) NULL,
	"Recruiter" varchar(100) NULL,
	"MailingAddress1" varchar(300) NULL,
	"MailingAddress2" varchar(300) NULL,
	"MailingCity" varchar(100) NULL,
	"MailingState" varchar(100) NULL,
	"MailingPostalCode" varchar(100) NULL,
	"FedexAddress1" varchar(100) NULL,
	"FedexAddress2" varchar(100) NULL,
	"FedexCity" varchar(100) NULL,
	"FedexState" varchar(100) NULL,
	"FedexPostalCode" varchar(100) NULL,
	"Note" varchar(1000) NULL,
	"Status" varchar(100) NULL,
	"TrainingEndDate" varchar(100) NULL,
	"LawsonAccountingUnit" varchar(100) NULL,
	"LawsonAddress1" varchar(100) NULL,
	"LawsonAddress2" varchar(100) NULL,
	"LawsonCity" varchar(100) NULL,
	"LawsonState" varchar(100) NULL,
	"LawsonPostalCode" varchar(100) NULL,
	"WorkEmail" varchar(100) NULL,
	"BirthDate" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgDriver" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

