-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create MarketPlayType table
-- =============================================


CREATE TABLE "DispatchOrder"."MarketPlayType"(
	"MarketPlayTypeId" serial NOT NULL,
	"Name" varchar(50) NOT NULL
);

ALTER TABLE "DispatchOrder"."MarketPlayType" ADD CONSTRAINT "PK_MarketPlayType" PRIMARY KEY("MarketPlayTypeId");

