-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Customer table
-- =============================================


CREATE TABLE "TripsMetaDB"."Customer"(
	"CustomerId" serial NOT NULL,
	"LegacyCustomerId" integer NULL,
	"Name" varchar(100) NOT NULL,
	"Type" varchar(100) NULL,
	"BillingAccountNumber" varchar(50) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."Customer" ADD CONSTRAINT "PK_Customer" PRIMARY KEY("CustomerId");

