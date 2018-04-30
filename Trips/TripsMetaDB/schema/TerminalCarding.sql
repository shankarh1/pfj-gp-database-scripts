-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create TerminalCarding table
-- =============================================


CREATE TABLE "TripsMetaDB"."TerminalCarding"(
	"TerminalCardingId" serial NOT NULL,
	"TerminalId" integer NULL,
	"TerminalCompany" text NULL,
	"DaysUntilExpiration" integer NOT NULL,
	"IsDeleted" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."TerminalCarding" ADD CONSTRAINT "PK_TerminalCarding" PRIMARY KEY ("TerminalCardingId");

ALTER TABLE "TripsMetaDB"."TerminalCarding" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."TerminalCarding" ADD CONSTRAINT "FK_TerminalCarding_Terminal" FOREIGN KEY ("TerminalId") REFERENCES "TripsMetaDB"."Terminal" ("TerminalId") 
ON DELETE CASCADE 
ON UPDATE CASCADE;

