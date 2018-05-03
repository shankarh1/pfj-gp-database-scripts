-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create FrProduct table
-- =============================================


CREATE TABLE "DispatchOrder"."FrProduct"(
	"FrProductId" serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"ShowOnKiosk" boolean NULL,
	"IsActive" boolean NULL
);

ALTER TABLE "DispatchOrder"."FrProduct" ADD CONSTRAINT "PK_FrProduct" PRIMARY KEY("FrProductId");

ALTER TABLE "DispatchOrder"."FrProduct" ALTER COLUMN "ShowOnKiosk" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."FrProduct" ALTER COLUMN "IsActive" SET DEFAULT true;

