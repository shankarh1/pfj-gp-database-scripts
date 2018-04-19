@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SET SCRIPT_NAME=%~n0
SET SCRIPT_FOLDER=%~dp0

SET TRIPSDBDEV=knxaosql2k160t.pilotcorp.net
SET TRIPSDBQA=knxaosql2k160q.pilotcorp.net
SET TRIPSDBUAT=knxsql2k16qa.pilotcorp.net
SET TRIPSDB=knxaosql2k161.pilotcorp.net

SET DB_NAME="TripsMetaDB"


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
ECHO No argumnets found. Please provide the name of the environment.
GOTO :EOF

:INVALID
ECHO Invalid argument. Valid arguments are dev, qa, uat and prod
GOTO :EOF

:RUN-SCRIPT
ECHO Running the scripts in %1 environment. DB server is %DB_SERVER%

SET LIST_OF_TABLES=""DispatchOrder"".""OrderItemDetail"" ""DispatchOrder"".""OrderItem"" ""DispatchOrder"".""OrderDetail"" ""DispatchOrder"".""Orders"" ""DispatchOrder"".""Loads""

FOR %%i in (%LIST_OF_TABLES%) DO (
	ECHO Dropping %%i
	psql -h %DB_SERVER% -U root -d %DB_NAME% -t -c "DROP TABLE IF EXISTS %%i"
)

SET SCRIPT_FILES=schema\Loads.sql schema\Orders.sql schema\OrderDetail.sql schema\OrderItem.sql schema\OrderItemDetail.sql

FOR %%j in (%SCRIPT_FILES%) DO (
	ECHO Running %%j
	psql -h %DB_SERVER% -U root -d %DB_NAME% -f %%j > Output.txt
)

GOTO :EOF

