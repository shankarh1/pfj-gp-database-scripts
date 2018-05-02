-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create TerminalType table
-- =============================================


CREATE TABLE "DispatchOrder"."TerminalType"(
	"TerminalTypeId" Serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."TerminalType" ADD CONSTRAINT "PK_TerminalType" PRIMARY KEY ("TerminalTypeId");

