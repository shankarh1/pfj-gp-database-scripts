-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-05-02
-- Description:	Create BillOfLadingToOrderToPullDetail table
-- =============================================


CREATE TABLE "DispatchOrder"."BillOfLadingToOrderToPullDetail"(
  "BillOfLadingToOrderToPullDetailId" serial NOT NULL,
  "BillOfLadingToOrderId" integer NULL,
  "PullDetailId" integer NULL
 );
 
ALTER TABLE "DispatchOrder"."BillOfLadingToOrderToPullDetail" ADD CONSTRAINT "PK_BillOfLadingToOrderToPullDetail" PRIMARY KEY("BillOfLadingToOrderToPullDetailId");

ALTER TABLE "DispatchOrder"."BillOfLadingToOrderToPullDetail" ADD CONSTRAINT "FK_BillOfLadingToOrderToPullDetail_BillOfLadingToOrder" FOREIGN KEY("BillOfLadingToOrderId")
REFERENCES "DispatchOrder"."BillOfLadingToOrder" ("BillOfLadingToOrderId")
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE "DispatchOrder"."BillOfLadingToOrderToPullDetail" ADD CONSTRAINT "FK_BillOfLadingToOrderToPullDetail_PullDetail" FOREIGN KEY("PullDetailId")
REFERENCES "DispatchOrder"."PullDetail" ("PullDetailId")
ON UPDATE CASCADE
ON DELETE CASCADE;