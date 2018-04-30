-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create DispatchBoardTime table
-- =============================================


CREATE TABLE "TripsMetaDB"."DispatchBoardTime"(
	"DispatchBoardTimeId" serial NOT NULL,
	"LegacyDispatchBoardTimeId" integer NULL,
	"Name" varchar(100) NOT NULL,
	"Description" varchar(500) NULL
);

ALTER TABLE "TripsMetaDB"."DispatchBoardTime" ADD CONSTRAINT "PK_DispatchBoardTime" PRIMARY KEY("DispatchBoardTimeId");

