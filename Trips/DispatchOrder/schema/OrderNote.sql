-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create OrderNote table
-- =============================================


CREATE TABLE "DispatchOrder"."OrderNote"(
	"OrderNoteId" serial NOT NULL,
	"OrderId" integer NOT NULL,
	"Note" text NOT NULL,
	"CreatedBy" integer NULL,
	"CreatedDateTime" timestamp(6) NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."OrderNote" ADD CONSTRAINT "PK_OrderNote" PRIMARY KEY("OrderNoteId");

ALTER TABLE "DispatchOrder"."OrderNote" ADD CONSTRAINT "FK_OrderNote_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId");

