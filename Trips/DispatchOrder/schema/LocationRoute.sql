-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create LocationRoute table
-- =============================================


CREATE TABLE "DispatchOrder"."LocationRoute"(
	"LocationRouteId" serial NOT NULL,
	"LegacyLocationRouteId" integer NULL,
	"StartLocationId" integer NOT NULL,
	"EndLocationId" integer NOT NULL,
	"CalcDistance" numeric(8, 4) NULL,
	"CalcTime" numeric(10, 4) NULL,
	"MapDistance" numeric(8, 4) NULL,
	"MapTime" numeric(10, 4) NULL,
	"HazmatDistance" numeric(8, 4) NULL,
	"HazmatTime" numeric(10, 4) NULL,
	"StandardsTime" numeric(10, 4) NULL,
	"Comments" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastModifiedBy" integer NULL,
	"LastModifiedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."LocationRoute" ADD CONSTRAINT "PK_LocationRoute" PRIMARY KEY("LocationRouteId");

