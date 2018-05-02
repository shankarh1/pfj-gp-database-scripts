-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DispatchAreaBoardTimeMapping table
-- =============================================


CREATE TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping"(
	"DispatchAreaBoardTimeId" serial NOT NULL,
	"DispatchAreaId" integer NOT NULL,
	"DispatchBoardId" integer NOT NULL,
	"DispatchBoardTimeId" integer NOT NULL,
	"IsActive" boolean  NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "PK_DispatchAreaBoardTimeMapping" PRIMARY KEY("DispatchAreaBoardTimeId");

ALTER TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping" ALTER COLUMN "IsActive" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "FK_DispatchAreaBoardTimeMapping_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "TripsMetaDB"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "FK_DispatchAreaBoardTimeMapping_DispatchBoard" FOREIGN KEY("DispatchBoardId")
REFERENCES "TripsMetaDB"."DispatchBoard" ("DispatchBoardId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."DispatchAreaBoardTimeMapping" ADD CONSTRAINT "FK_DispatchAreaBoardTimeMapping_DispatchBoardTime" FOREIGN KEY("DispatchBoardTimeId")
REFERENCES "TripsMetaDB"."DispatchBoardTime" ("DispatchBoardTimeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

