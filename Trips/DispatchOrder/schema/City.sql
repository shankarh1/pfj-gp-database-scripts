-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create City table
-- =============================================


CREATE TABLE "DispatchOrder"."City"(
	"CityId" serial NOT NULL,
	"StateId" integer NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "DispatchOrder"."City" ADD CONSTRAINT "PK_City" PRIMARY KEY("CityId");

ALTER TABLE "DispatchOrder"."City" ADD CONSTRAINT "FK_City_State" FOREIGN KEY("StateId") REFERENCES "TripsMetaDB"."State" ("StateId")
ON UPDATE CASCADE
ON DELETE CASCADE

