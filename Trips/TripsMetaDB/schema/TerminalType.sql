-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create TerminalType table
-- =============================================


CREATE TABLE "TripsMetaDB"."TerminalType"(
	"TerminalTypeId" Serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "TripsMetaDB"."TerminalType" ADD CONSTRAINT "PK_TerminalType" PRIMARY KEY ("TerminalTypeId");

