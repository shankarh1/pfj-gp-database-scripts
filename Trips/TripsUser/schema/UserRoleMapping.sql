-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create UserRoleMapping table
-- =============================================


CREATE TABLE "TripsUser"."UserRoleMapping"(
	"UserRoleMappingId" serial NOT NULL,
	"UserId" integer NOT NULL,
	"RoleId" integer NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TripsUser"."UserRoleMapping" ADD CONSTRAINT "PK_UserRoleMapping" PRIMARY KEY("UserRoleMappingId");

ALTER TABLE "TripsUser"."UserRoleMapping" ADD CONSTRAINT "FK_UserRoleMapping_Role" FOREIGN KEY("RoleId") REFERENCES "TripsUser"."Role" ("RoleId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsUser"."UserRoleMapping" ADD CONSTRAINT "FK_UserRoleMapping_User" FOREIGN KEY("UserId") REFERENCES "TripsUser"."User" ("UserId")
ON UPDATE CASCADE
ON DELETE CASCADE;

