-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create LoginCurrent table
-- =============================================


CREATE TABLE "DispatchOrder"."LoginCurrent"(
	"LoginCurrentId" serial NOT NULL,
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

ALTER TABLE "DispatchOrder"."LoginCurrent" ADD CONSTRAINT "PK_LoginCurrent" PRIMARY KEY("LoginCurrentId");

ALTER TABLE "DispatchOrder"."LoginCurrent" ALTER COLUMN "CreatedBy" SET DEFAULT 1;


ALTER TABLE "DispatchOrder"."LoginCurrent" ALTER COLUMN "CreatedDateTime" SET DEFAULT now();

ALTER TABLE "DispatchOrder"."LoginCurrent" ADD CONSTRAINT "FK_LoginCurrent_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."LoginCurrent" ADD CONSTRAINT "FK_LoginCurrent_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE CASCADE
ON DELETE CASCADE;

