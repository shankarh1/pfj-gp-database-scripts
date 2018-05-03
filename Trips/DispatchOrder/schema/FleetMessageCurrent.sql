-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create FleetMessageCurrent table
-- =============================================


CREATE TABLE "DispatchOrder"."FleetMessageCurrent"(
	"MessageCurrentId" serial NOT NULL,
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

ALTER TABLE "DispatchOrder"."FleetMessageCurrent" ADD CONSTRAINT "PK_FleetMessageCurrent" PRIMARY KEY("MessageCurrentId");

ALTER TABLE "DispatchOrder"."FleetMessageCurrent" ALTER COLUMN "CreatedDate" SET DEFAULT now();