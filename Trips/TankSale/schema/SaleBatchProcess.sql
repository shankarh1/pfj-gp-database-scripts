-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create SaleBatchProcess table
-- =============================================


CREATE TABLE "TankSale"."SaleBatchProcess"(
	"BatchId" serial NOT NULL,
	"RecordCount" integer NOT NULL,
	"BatchStartBy" timestamp(6) NOT NULL,
	"BatchEndBy" timestamp(6) NULL,
	"IsBatchComplete" boolean NOT NULL,
	"IgnoreBatch" boolean NOT NULL,
	"FileName" varchar(200) NULL,
	"IsSaleCurrentProcessed" boolean NULL,
	"IsSaleProcessed" boolean NULL,
	"SaleTypeId" integer NULL
);

ALTER TABLE "TankSale"."SaleBatchProcess" ADD CONSTRAINT "PK_SaleBatchProcess" PRIMARY KEY("BatchId");

ALTER TABLE "TankSale"."SaleBatchProcess" ALTER COLUMN "IsBatchComplete" SET DEFAULT false;

ALTER TABLE "TankSale"."SaleBatchProcess" ALTER COLUMN "IgnoreBatch" SET DEFAULT true;

ALTER TABLE "TankSale"."SaleBatchProcess" ALTER COLUMN "IsSaleCurrentProcessed" SET DEFAULT false;

ALTER TABLE "TankSale"."SaleBatchProcess" ALTER COLUMN "IsSaleProcessed" SET DEFAULT false;

