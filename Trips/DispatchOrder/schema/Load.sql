-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-19
-- Description:	Create Loads table
-- =============================================


CREATE TABLE "DispatchOrder"."Load"(
  "LoadId" serial NOT NULL,
  "LoadNumber" integer NULL,
  "CreatedBy" integer NOT NULL,
  "CreatedDateTime" timestamp NOT NULL,
  "LastUpdatedBy" integer NULL,
  "LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Load" ADD CONSTRAINT "PK_Load" PRIMARY KEY ("LoadId");

