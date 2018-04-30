-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StoreProductTypeMapping table
-- =============================================


CREATE TABLE "TripsMetaDB"."StoreProductTypeMapping"(
	"StoreProductTypeMappingId" serial NOT NULL,
	"StoreId" integer NULL,
	"BaseProductTypeId" integer NULL,
	"BlendProductTypeId" integer NULL,
	"BlendPercent" decimal(6, 3) NULL,
	"BlendValidityStartDateTime" timestamp NULL,
	"BlendValidityEndDateTime" timestamp NULL,
	"IsDeleted" boolean  NOT NULL,
	"CreatedBy" integer NULL,
	"CreatedDateTime" timestamp NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."StoreProductTypeMapping" ADD CONSTRAINT "PK_ProductBlend" PRIMARY KEY("StoreProductTypeMappingId");

ALTER TABLE "TripsMetaDB"."StoreProductTypeMapping" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "TripsMetaDB"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_Store" FOREIGN KEY("StoreId") REFERENCES "TripsMetaDB"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "TripsMetaDB"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_BaseProductType" FOREIGN KEY("BaseProductTypeId") REFERENCES "TripsMetaDB"."ProductType" ("ProductTypeId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE "TripsMetaDB"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_BlendProductType" FOREIGN KEY("BlendProductTypeId") REFERENCES "TripsMetaDB"."ProductType" ("ProductTypeId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

