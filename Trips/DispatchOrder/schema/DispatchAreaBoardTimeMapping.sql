-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create DispatchAreaBoardTimeMapping table
-- =============================================


CREATE TABLE "DispatchOrder"."DispatchAreaBoardTimeMapping"(
	"DispatchAreaBoardTimeId" serial NOT NULL,
	"DispatchAreaId" integer NOT NULL,
	"DispatchBoardId" integer NOT NULL,
	"DispatchBoardTimeId" integer NOT NULL,
	"IsActive" boolean NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "PK_DispatchAreaBoardTimeMapping" PRIMARY KEY("DispatchAreaBoardTimeId");

ALTER TABLE "DispatchOrder"."DispatchAreaBoardTimeMapping" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "FK_DispatchAreaBoardTimeMapping_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "DispatchOrder"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

