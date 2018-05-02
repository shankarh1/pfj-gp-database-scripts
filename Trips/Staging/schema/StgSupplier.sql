-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-27
-- Description:	Create StgSupplier table
-- =============================================


CREATE TABLE "Staging"."StgSupplier"(
	"SupplierMasterId" varchar(100) NULL,
	"VendorId" varchar(100) NULL,
	"SupplierName" varchar(100) NULL,
	"ShortName" varchar(100) NULL,
	"Address1" varchar(250) NULL,
	"Address2" varchar(250) NULL,
	"City" varchar(100) NULL,
	"State" varchar(100) NULL,
	"Country" varchar(100) NULL,
	"PostalCode" varchar(100) NULL,
	"AddressGroupId" varchar(100) NULL,
	"Contact" varchar(100) NULL,
	"Phone" varchar(100) NULL,
	"Fax" varchar(100) NULL,
	"Email" varchar(100) NULL,
	"AddedDate" varchar(100) NULL,
	"AddedUser" varchar(100) NULL,
	"Status" varchar(100) NULL,
	"InactivatedDate" varchar(100) NULL,
	"ModifiedDate" varchar(100) NULL,
	"ModifiedUser" varchar(100) NULL,
	"RaBaId" varchar(100) NULL,
	"RaBaParentId" varchar(100) NULL,
	"RaName" varchar(100) NULL,
	"RaAbbreviation" varchar(100) NULL,
	"RaModifiedDate" varchar(100) NULL,
	"RaModifiedByUserId" varchar(100) NULL,
	"RaBaStatus" varchar(100) NULL,
	"RaComments" varchar(250) NULL,
	"RaBaCreationDate" varchar(100) NULL,
	"RaBaCreationUserId" varchar(100) NULL,
	"DtnTabsName" varchar(100) NULL,
	"IsRealVendor" varchar(100) NULL,
	"IsCreditApproved" varchar(100) NULL,
	"FeedDateTime" timestamp NULL
);

ALTER TABLE "Staging"."StgSupplier" ALTER COLUMN "FeedDateTime" SET DEFAULT now();

