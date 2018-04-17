-- =============================================
-- Author:      Hanumanthaswamy D S
-- Create date: 2018-04-13
-- Description: Create Trigger for StgArea
-- =============================================


CREATE TRIGGER trStgAreaIns
    AFTER INSERT OR UPDATE 
    ON staging.StgArea
    FOR EACH ROW
    EXECUTE PROCEDURE staging.trStgAreaIns();

