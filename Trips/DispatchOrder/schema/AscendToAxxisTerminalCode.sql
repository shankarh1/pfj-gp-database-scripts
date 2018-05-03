-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create AscendToAxxisTerminalCode table
-- =============================================


CREATE TABLE "DispatchOrder"."AscendToAxxisTerminalCode"(
	"AscendToAxxisTerminalCodeId" serial NOT NULL,
	"AscendShipToName" varchar(50) NOT NULL,
	"AscendProduct" varchar(50) NOT NULL,
	"AxxisTerminalGroupCode" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."AscendToAxxisTerminalCode" ADD CONSTRAINT "PK_AscendToAxxisTerminalCode" PRIMARY KEY("AscendToAxxisTerminalCodeId");

