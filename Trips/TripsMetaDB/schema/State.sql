-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create State table
-- =============================================


CREATE TABLE "TripsMetaDB"."State"(
	"StateId" serial NOT NULL,
	"CountryId" integer NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Code" varchar(2) NOT NULL
);

ALTER TABLE "TripsMetaDB"."State" ADD CONSTRAINT "PK_State" PRIMARY KEY("StateId");

ALTER TABLE "TripsMetaDB"."State" ADD CONSTRAINT "FK_State_Country" FOREIGN KEY("CountryId") REFERENCES "TripsMetaDB"."Country" ("CountryId")
ON UPDATE CASCADE
ON DELETE CASCADE;

