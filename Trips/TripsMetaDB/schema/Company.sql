-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create Company table
-- =============================================


CREATE TABLE "TripsMetaDB"."Company"(
	"CompanyId" serial NOT NULL,
	"Name" varchar(100) NOT NULL
);

ALTER TABLE "TripsMetaDB"."Company" ADD CONSTRAINT "PK_Company" PRIMARY KEY("CompanyId");

