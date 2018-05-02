-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create FleetMessageHistory table
-- =============================================


CREATE TABLE "DispatchOrder"."FleetMessageHistory"(
	"MessageHistoryId" serial NOT NULL,
	"MessageQueueID" integer NULL,
	"MessageCourierID" integer NULL,
	"Subject" varchar(50) NULL,
	"MessageStatusID" integer NULL,
	"FleetEquipmentID" integer NULL,
	"ThirdPartyMessageID" integer NULL,
	"CommunicationMethodID" integer NULL,
	"MessageFormatID" integer NULL,
	"CreatedDate" timestamp NULL
);

ALTER TABLE "DispatchOrder"."FleetMessageHistory" ADD CONSTRAINT "PK_FleetMessageHistory" PRIMARY KEY("MessageHistoryId");

ALTER TABLE "DispatchOrder"."FleetMessageHistory" ALTER COLUMN "CreatedDate" SET DEFAULT now();

