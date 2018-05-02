-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Load table
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

