-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create TankPar table
-- =============================================


CREATE TABLE "TankInventory"."TankPar"(
	"TankParId" serial NOT NULL,
	"LegacyTankParId" integer NULL,
	"TankId" integer NULL,
	"DayOfAWeek" integer NOT NULL,
	"ParMin" integer NULL,
	"ParMax" integer NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankInventory"."TankPar" ADD CONSTRAINT "PK_TankPar" PRIMARY KEY("TankParId");

ALTER TABLE "TankInventory"."TankPar" ADD CONSTRAINT "FK_TankPar_Tank" FOREIGN KEY("TankId") REFERENCES "TankInventory"."Tank" ("TankId")
ON UPDATE CASCADE
ON DELETE CASCADE;

