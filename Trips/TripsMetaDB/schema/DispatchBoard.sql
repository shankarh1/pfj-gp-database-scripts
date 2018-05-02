-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DispatchBoard table
-- =============================================


CREATE TABLE "TripsMetaDB"."DispatchBoard"(
	"DispatchBoardId" serial NOT NULL,
	"LegacyDispatchBoardId" integer NULL,
	"Name" varchar(100) NOT NULL,
	"PrimaryPhone" varchar(15) NULL,
	"SecondaryPhone" varchar(15) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."DispatchBoard" ADD CONSTRAINT "PK_DispatchBoard" PRIMARY KEY("DispatchBoardId");

