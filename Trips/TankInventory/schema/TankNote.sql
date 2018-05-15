-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create TankNote table
-- =============================================


CREATE TABLE "TankInventory"."TankNote"(
	"TankNoteId" serial NOT NULL,
	"LegacyTankNoteId" integer NULL,
	"TankId" integer NULL,
	"Note" text NULL,
	"CreatedBy" integer NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "TankInventory"."TankNote" ADD CONSTRAINT "PK_TankNote" PRIMARY KEY("TankNoteId");

ALTER TABLE "TankInventory"."TankNote" ADD CONSTRAINT "FK_TankNote_Tank" FOREIGN KEY("TankId") REFERENCES "TankInventory"."Tank" ("TankId")
ON UPDATE CASCADE
ON DELETE CASCADE;

