-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create City table
-- =============================================


CREATE TABLE "TripsMetaDB"."City"(
	"CityId" serial NOT NULL,
	"StateId" integer NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "TripsMetaDB"."City" ADD CONSTRAINT "PK_City" PRIMARY KEY("CityId");

ALTER TABLE "TripsMetaDB"."City" ADD CONSTRAINT "FK_City_State" FOREIGN KEY("StateId") REFERENCES "TripsMetaDB"."State" ("StateId")
ON UPDATE CASCADE
ON DELETE CASCADE

