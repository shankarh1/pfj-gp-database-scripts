@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SET SCRIPT_NAME=%~n0
SET SCRIPT_FOLDER=%~dp0

SET TRIPSDBDEV=knxaosql2k160t.pilotcorp.net
SET TRIPSDBQA=knxaosql2k160q.pilotcorp.net
SET TRIPSDBUAT=knxsql2k16qa.pilotcorp.net
SET TRIPSDB=knxaosql2k161.pilotcorp.net

SET DB_NAME=TripsMetaDB
SET SCHEMA_NAME=DispatchOrder

cls

IF [%1]==[] GOTO :BLANK

IF %1==dev (
	SET DB_SERVER=%TRIPSDBDEV%
	GOTO :RUN-SCRIPT
) ELSE IF %1==qa (
	SET DB_SERVER=%TRIPSDBQA%
	GOTO :RUN-SCRIPT
) ELSE IF %1==uat (
	SET DB_SERVER=%TRIPSDBUAT%
	GOTO :RUN-SCRIPT
) ELSE IF %1==prod (
	SET DB_SERVER=%TRIPSDB%
	GOTO :RUN-SCRIPT
) ELSE (
	GOTO :INVALID
)

:BLANK
ECHO No arguments found. Please provide the name of the environment.
GOTO :EOF

:BLANK1 
ECHO Please provide the Id of the dispatch area.
GOTO :EOF

:INVALID
ECHO Invalid argument. Valid arguments are dev, qa, uat and prod.
GOTO :EOF

:INVALIDAREA
ECHO Invalid DispatchAreaId. Valid DispatchreAreaIds are between 1 and %DispatchAreaId%.
GOTO :EOF

:RUN-SCRIPT
psql -h %DB_SERVER% -U postgres -d %DB_NAME% -t -c "SELECT MAX(DispatchAreaId) FROM %SCHEMA_NAME%.DispatchArea" > tmp.txt
set /P DispatchAreaId= < tmp.txt
del tmp.txt

IF [%2]==[] GOTO :BLANK1

IF %2 LSS 1 (
	GOTO :INVALIDAREA
) ELSE IF %2 GTR %DispatchAreaId% (
	GOTO :INVALIDAREA
) ELSE (
	SET vDispatchAreaId=%2
)

ECHO Running the scripts in %1 environment. DB server is %DB_SERVER%

SET SCRIPT_FILES=dataMigrationAreawise\Order.sql dataMigrationAreawise\OrderItem.sql dataMigrationAreawise\Order_Ascend.sql dataMigrationAreawise\OrderItem_Ascend.sql dataMigrationAreawise\OrderDetail_Ascend.sql dataMigrationAreawise\OrderItemDetail_Ascend.sql dataMigrationAreawise\Order_SAP.sql dataMigrationAreawise\OrderItem_SAP.sql dataMigrationAreawise\OrderDetail_SAP.sql dataMigrationAreawise\OrderItemDetail_SAP.sql postProcessing\Order_LoadId_Processing_Updated.sql dataMigrationAreawise\OrderNote.sql dataMigrationAreawise\OrderMileageItem.sql dataMigrationAreawise\CarrierPurchaseOrderDemurrage.sql dataMigrationAreawise\CarrierPurchaseOrderExtraStop.sql dataMigrationAreawise\CarrierPurchaseOrderMisc.sql dataMigrationAreawise\CarrierPurchaseOrderOutofRoute.sql 

FOR %%i in (%SCRIPT_FILES%) DO (
	ECHO Running %%i 
	psql -h %DB_SERVER% -U postgres -d %DB_NAME% -a -f %%i -e -v v1="%vDispatchAreaId%" 2> Error.txt > Output.txt
)

GOTO :EOF
