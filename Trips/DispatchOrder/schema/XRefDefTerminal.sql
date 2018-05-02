-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create XRefDefTerminal table
-- =============================================


CREATE TABLE "DispatchOrder"."XRefDefTerminal"(
	"XRefDefTerminalId" bigint NOT NULL,
	"TerminalId" integer NULL,
	"Longname" varchar(50) NOT NULL,
	"Code" integer NOT NULL,
	"TerminalCity" varchar(50) NOT NULL,
	"State" varchar(50) NOT NULL
);

