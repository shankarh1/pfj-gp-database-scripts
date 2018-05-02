-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create City table
-- =============================================


CREATE TABLE "TripsMetaDB"."TransportationHierarchyCompany"(
	"CompanyId" serial NOT NULL,
	"Company" integer NULL,
	"Description" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "TripsMetaDB"."TransportationHierarchyCompany" ADD CONSTRAINT "PK_TransportationHierarchyCompany" PRIMARY KEY("CompanyId");

