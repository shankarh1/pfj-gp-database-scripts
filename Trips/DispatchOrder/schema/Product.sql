-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Product table
-- =============================================


CREATE TABLE "DispatchOrder"."Product"(
	"ProductId" serial NOT NULL,
	"Name" varchar(100) NULL,
	"Code" varchar(100) NULL,
	"Category" varchar(100) NULL,
	"AxxisProductName" varchar(100) NULL,
	"AxxisGuid" varchar(100) NULL,
	"GameplanGuid" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."Product" ADD CONSTRAINT "PK_Product" PRIMARY KEY("ProductId");


