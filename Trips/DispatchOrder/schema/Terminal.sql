-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Terminal table
-- =============================================


CREATE TABLE "DispatchOrder"."Terminal"(
	"TerminalId" Serial NOT NULL,
	"TerminalSystemId" integer NULL,
	"LegacyTerminalId" integer NULL,
	"TerminalTypeId" integer NULL,
	"FleetLocationId" integer NULL,
	"LongName" varchar(200) NULL,
	"ShortName" varchar(50) NULL,
	"TerminalCity" text NULL,
	"TerminalCompany" text NULL,
	"AxxisTerminalName" varchar(100) NULL,
	"AxxisTerminalCode" varchar(50) NULL,
	"AxxisCustomerTerminalCode" varchar(3) NULL,
	"ExStar" varchar(12) NULL,
	"AxxisGuid" varchar(50) NULL,
	"GameplanGuid" varchar(50) NULL,
	"Address1" varchar(100) NULL,
	"Address2" varchar(100) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"ZipCode" varchar(10) NULL,
	"Latitude" numeric(12, 8) NULL,
	"Longitude" numeric(12, 8) NULL,
	"IsActive" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Terminal" ADD CONSTRAINT "PK_Terminal" PRIMARY KEY ("TerminalId");

ALTER TABLE "DispatchOrder"."Terminal" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."Terminal" ADD CONSTRAINT "FK_Terminal_TerminalType" FOREIGN KEY ("TerminalTypeId") REFERENCES "TripsMetaDB"."TerminalType" ("TerminalTypeId") ON DELETE CASCADE ON UPDATE CASCADE;


