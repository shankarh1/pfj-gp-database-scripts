-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create Message table
-- =============================================


CREATE TABLE "DispatchOrder"."Message"(
	"MessageId" serial NOT NULL,
	"MessageStatusId" integer NOT NULL,
	"OrderId" integer NULL,
	"TruckId" integer NULL,
	"DriverId" integer NULL,
	"CarrierId" integer NULL,
	"TripsCarrierId" integer NULL,
	"MessageReferenceNo" varchar(50) NULL,
	"CommunicationMethod" varchar(100) NULL,
	"Subject" varchar(500) NULL,
	"Message" text NULL,
	"Attachment" BYTEA NULL,
	"CreatedBy" integer NOT NULL,
	"CreatedDateTime" timestamp(6) NOT NULL,
	"LastUpdatedBy" integer NULL,
	"LastUpdatedDateTime" timestamp(6) NULL
);

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "PK_Message" PRIMARY KEY("MessageId");

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_Carrier" FOREIGN KEY("CarrierId")
REFERENCES "DispatchOrder"."Carrier" ("CarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_Driver" FOREIGN KEY("DriverId")
REFERENCES "DispatchOrder"."Driver" ("DriverId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_OrderMessageStatusType" FOREIGN KEY("MessageStatusId")
REFERENCES "DispatchOrder"."OrderMessageStatusType" ("OrderMessageStatusTypeId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_Order" FOREIGN KEY("OrderId")
REFERENCES "DispatchOrder"."Order" ("OrderId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_TripsCarrier" FOREIGN KEY("TripsCarrierId")
REFERENCES "DispatchOrder"."TripsCarrier" ("TripsCarrierId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."Message" ADD CONSTRAINT "FK_Message_Truck" FOREIGN KEY("TruckId")
REFERENCES "DispatchOrder"."Truck" ("TruckId")
ON UPDATE CASCADE
ON DELETE CASCADE;

