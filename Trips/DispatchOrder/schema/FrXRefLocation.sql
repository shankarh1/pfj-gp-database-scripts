-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create FrXRefLocation table
-- =============================================


CREATE TABLE "DispatchOrder"."FrXRefLocation"(
	"StoreNbr" integer NULL,
	"FJStoreNbr" integer NOT NULL,
	"Canada" integer NULL
	);
	
ALTER TABLE "DispatchOrder"."FrXRefLocation" ADD CONSTRAINT "PK_FrXRefLocation" PRIMARY KEY("FJStoreNbr");

