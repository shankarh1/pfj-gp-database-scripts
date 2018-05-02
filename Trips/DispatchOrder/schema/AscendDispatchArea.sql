-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create AscendDispatchArea table
-- =============================================


CREATE TABLE "DispatchOrder"."AscendDispatchArea"(
	"AscendDispatchAreaId" serial NOT NULL,
	"LegacyDispatchAreaId" integer NOT NULL,
	"IsActive" boolean NOT NULL
);

ALTER TABLE "DispatchOrder"."AscendDispatchArea" ADD CONSTRAINT "PK_AscendDispatchArea" PRIMARY KEY("AscendDispatchAreaId");

ALTER TABLE "DispatchOrder"."AscendDispatchArea" ALTER COLUMN "IsActive" SET DEFAULT true;

