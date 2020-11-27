@echo off
REM ===========================================================================
REM             Contact Kun.Shen@lombardrisk.com if any bug    
REM ===========================================================================

set _GEN_CONSTANT_SCRIPT_NAME="GenProductDPM.vbs"

REM =============== need to modify vars ======================
REM =============== start ======================
set _GEN_VAR_DB_FULLNAME="E:\c\FED_FORM_META.accdb"
set _GEN_VAR_DATA_PATH="E:\foo"
set _GEN_VAR_LOG_FULLNAME="%~dp0log\GenerateSchema.log"
REM =============== end ======================
REM =============== need to modify vars ======================

if /I "%PROCESSOR_ARCHITECTURE%"=="x86" (
	echo run on x86
	echo.
    start cmd /k cscript //nologo "%~dp0%_GEN_CONSTANT_SCRIPT_NAME%" "GenSCHEMA" %_GEN_VAR_DB_FULLNAME% %_GEN_VAR_DATA_PATH% %_GEN_VAR_LOG_FULLNAME%
	
) ELSE (
    echo run on wow64
	echo.
    start %SystemRoot%\SysWow64\cmd.exe /k cscript //nologo "%~dp0%_GEN_CONSTANT_SCRIPT_NAME%" "GENSCHEMA" %_GEN_VAR_DB_FULLNAME% %_GEN_VAR_DATA_PATH% %_GEN_VAR_LOG_FULLNAME%
)


:EOF