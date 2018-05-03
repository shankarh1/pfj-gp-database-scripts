-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create StoreProductTypeMapping table
-- =============================================


CREATE TABLE "DispatchOrder"."StoreProductTypeMapping"(
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

ALTER TABLE "DispatchOrder"."StoreProductTypeMapping" ADD CONSTRAINT "PK_ProductBlend" PRIMARY KEY("StoreProductTypeMappingId");

ALTER TABLE "DispatchOrder"."StoreProductTypeMapping" ALTER COLUMN "IsDeleted" SET DEFAULT false;

ALTER TABLE "DispatchOrder"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_Store" FOREIGN KEY("StoreId") REFERENCES "DispatchOrder"."Store" ("StoreId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_BaseProductType" FOREIGN KEY("BaseProductTypeId") REFERENCES "DispatchOrder"."ProductType" ("ProductTypeId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;

ALTER TABLE "DispatchOrder"."StoreProductTypeMapping" ADD CONSTRAINT "FK_StoreProductTypeMapping_BlendProductType" FOREIGN KEY("BlendProductTypeId") REFERENCES "DispatchOrder"."ProductType" ("ProductTypeId")
ON UPDATE NO ACTION
ON DELETE NO ACTION;


