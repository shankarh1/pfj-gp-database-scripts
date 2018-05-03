-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DriverLogin table
-- =============================================


CREATE TABLE "DispatchOrder"."DriverLogin"(
	"DriverLoginId" serial NOT NULL,
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

ALTER TABLE "DispatchOrder"."DriverLogin" ADD CONSTRAINT "PK_DriverLogin" PRIMARY KEY("DriverLoginId");

ALTER TABLE "DispatchOrder"."DriverLogin" ADD CONSTRAINT "FK_DriverLogin_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."DriverLogin" ADD CONSTRAINT "FK_DriverLogin_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE CASCADE
ON DELETE CASCADE;

