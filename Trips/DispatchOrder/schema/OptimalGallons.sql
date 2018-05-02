-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OptimalGallons table
-- =============================================


CREATE TABLE "DispatchOrder"."OptimalGallons"(
	"OptimalGallonsId" serial NOT NULL,
	"EquipmentId" integer NOT NULL,
	"ProductTypeId" integer NOT NULL,
	"DefaultGallons" integer NOT NULL
);

ALTER TABLE "DispatchOrder"."OptimalGallons" ADD CONSTRAINT "PK_OptimalGallons" PRIMARY KEY("OptimalGallonsId");

ALTER TABLE "DispatchOrder"."OptimalGallons" ADD CONSTRAINT "FK_OptimalGallons_Equipment" FOREIGN KEY("EquipmentId")
REFERENCES "DispatchOrder"."Equipment" ("EquipmentId");

ALTER TABLE "DispatchOrder"."OptimalGallons" ADD CONSTRAINT "FK_OptimalGallons_ProductType" FOREIGN KEY("ProductTypeId")
REFERENCES "DispatchOrder"."ProductType" ("ProductTypeId");

