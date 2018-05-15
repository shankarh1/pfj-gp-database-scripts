-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Application table
-- =============================================


CREATE TABLE "TripsUser"."Application"(
	"ApplicationId" serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Description" varchar(500) NOT NULL
);

ALTER TABLE "TripsUser"."Application" ADD CONSTRAINT "PK_Application" PRIMARY KEY("ApplicationId");

ALTER TABLE "TripsUser"."Application" ADD CONSTRAINT "AK_Application" UNIQUE ("Name");

