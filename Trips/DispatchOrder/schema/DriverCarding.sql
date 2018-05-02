-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverCarding table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverCarding"(
	"DriverCardingId" serial NOT NULL,
	"DriverId" integer NULL,
	"TerminalId" integer NULL,
	"LastPulledDateTime" timestamp(6) NOT NULL,
	"ExpirationDateTime" timestamp(6) NULL,
	"IsExpired" boolean NULL,
	"IsDeleted" boolean NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DriverCarding" ADD CONSTRAINT "PK_DriverCarding" PRIMARY KEY("DriverCardingId");

ALTER TABLE "DispatchOrder"."DriverCarding" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DriverCarding" ALTER COLUMN "IsExpired" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DriverCarding" ADD CONSTRAINT "FK_DriverCarding_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DriverCarding" ADD CONSTRAINT "FK_DriverCarding_Terminal" FOREIGN KEY("TerminalId")
REFERENCES "DispatchOrder"."Terminal" ("TerminalId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

