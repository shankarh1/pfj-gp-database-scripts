-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create AscendToAxxisProductGroupCode table
-- =============================================


CREATE TABLE "DispatchOrder"."AscendToAxxisProductGroupCode"(
	"AscendToAxxisProductGroupCodeId" serial NOT NULL,
	"AscendProduct" varchar(50) NOT NULL,
	"ProductGroupCode" char(1) NOT NULL
);

ALTER TABLE "DispatchOrder"."AscendToAxxisProductGroupCode" ADD CONSTRAINT "PK_AscendToAxxisProductGroupCode" PRIMARY KEY("AscendToAxxisProductGroupCodeId");

