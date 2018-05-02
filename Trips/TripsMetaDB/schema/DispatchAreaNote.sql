-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DispatchAreaNote table
-- =============================================


CREATE TABLE "TripsMetaDB"."DispatchAreaNote"(
	"DispatchAreaNoteId" serial NOT NULL,
	"DispatchAreaId" integer NOT NULL,
	"Note" text NOT NULL,
	"ExpirationDateTime" timestamp NULL,
	"IsHighPriority" boolean  NULL,
	"IsPinned" boolean  NOT NULL,
	"IsDeleted" boolean  NOT NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."DispatchAreaNote" ADD CONSTRAINT "PK_DispatchAreaNote" PRIMARY KEY("DispatchAreaNoteId");

ALTER TABLE "TripsMetaDB"."DispatchAreaNote" ALTER COLUMN "IsHighPriority" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."DispatchAreaNote" ALTER COLUMN "IsPinned" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."DispatchAreaNote" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."DispatchAreaNote" ADD CONSTRAINT "FK_DispatchAreaNote_DispatchArea" FOREIGN KEY("DispatchAreaId")
REFERENCES "TripsMetaDB"."DispatchArea" ("DispatchAreaId")
ON UPDATE CASCADE
ON DELETE CASCADE;

