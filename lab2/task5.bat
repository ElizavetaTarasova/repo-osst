@echo off
setlocal enabledelayedexpansion
set first=1

echo Enter numbers one by one.
echo Type '-' to stop.
echo.

:input
set /p num="Number: "
if "%num%"=="-" goto end
if "%num%"=="" goto end
if "%first%"=="1" (
    set max=%num%
    set min=%num%
    set first=0
) else (
    if %num% gtr !max! set max=%num%
    if %num% lss !min! set min=%num%
)
goto input

:end
echo.
echo ========================
echo RESULTS:
echo Maximum number: %max%
echo Minimum number: %min%
echo ========================
pause