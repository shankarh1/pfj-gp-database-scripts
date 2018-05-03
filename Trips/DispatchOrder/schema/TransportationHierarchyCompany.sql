-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create TransportationHierarchyCompany table
-- =============================================


CREATE TABLE "DispatchOrder"."TransportationHierarchyCompany"(
	"CompanyId" serial NOT NULL,
	"Company" integer NULL,
	"Description" varchar(100) NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp NULL
);

ALTER TABLE "DispatchOrder"."TransportationHierarchyCompany" ADD CONSTRAINT "PK_TransportationHierarchyCompany" PRIMARY KEY("CompanyId");

