-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-03
-- Description:	Create SsaStores table
-- =============================================


CREATE TABLE "TankInventory"."SsaStores"(
	"Id" serial NOT NULL,
	"SsaStoreNbr" integer NOT NULL,
	"StoreNbr" integer NOT NULL,
	"Company" nchar(10) NULL
);

