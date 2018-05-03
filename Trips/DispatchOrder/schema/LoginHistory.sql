-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create LoginHistory table
-- =============================================


CREATE TABLE "DispatchOrder"."LoginHistory"(
	"LoginHistoryId" serial NOT NULL,
	"DriverId" integer NULL,
	"TruckId" integer NULL,
	"EstLoginTime" timestamp(6) NULL,
	"EstLogoutTime" timestamp(6) NULL,
	"LocalLoginTime" timestamp(6) NULL,
	"LocalLogoutTime" timestamp(6) NULL,
	"GmtLoginTime" timestamp(6) NULL,
	"GmtLogoutTime" timestamp(6) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL
);

ALTER TABLE "DispatchOrder"."LoginHistory" ADD CONSTRAINT "PK_LoginHistory" PRIMARY KEY("LoginHistoryId");

ALTER TABLE "DispatchOrder"."LoginHistory" ALTER COLUMN "CreatedBy" SET DEFAULT 1;

ALTER TABLE "DispatchOrder"."LoginHistory" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "DispatchOrder"."LoginHistory" ADD CONSTRAINT "FK_LoginHistory_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."LoginHistory" ADD CONSTRAINT "FK_LoginHistory_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE CASCADE
ON DELETE CASCADE;

