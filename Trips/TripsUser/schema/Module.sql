-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Module table
-- =============================================


CREATE TABLE "TripsUser"."Module"(
	"ModuleId" serial NOT NULL,
	"ApplicationId" integer NOT NULL,
	"ParentModuleId" integer NULL,
	"Name" varchar(100) NOT NULL,
	"Description" varchar(500) NULL
);

ALTER TABLE "TripsUser"."Module" ADD CONSTRAINT "PK_Module" PRIMARY KEY("ModuleId");

ALTER TABLE "TripsUser"."Module" ADD CONSTRAINT "FK_Module_Application" FOREIGN KEY("ApplicationId") REFERENCES "TripsUser"."Application" ("ApplicationId")
ON UPDATE CASCADE
ON DELETE CASCADE;

