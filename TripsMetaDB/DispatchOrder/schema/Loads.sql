-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-19
-- Description:	Create Loads table
-- =============================================


CREATE TABLE "DispatchOrder"."Loads"(
  "LoadId" serial NOT NULL,
  "LoadNumber" integer NULL,
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp NOT NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Loads" ADD CONSTRAINT "PK_Loads" PRIMARY KEY ("LoadId");

