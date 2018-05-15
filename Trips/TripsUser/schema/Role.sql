-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create Role table
-- =============================================


CREATE TABLE "TripsUser"."Role"(
	"RoleId" serial NOT NULL,
	"Name" varchar(50) NOT NULL,
	"Description" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."Role" ADD CONSTRAINT "PK_Role" PRIMARY KEY("RoleId");

