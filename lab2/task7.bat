@echo off
setlocal enabledelayedexpansion

if "%1"=="" goto error
if "%2"=="" goto error

echo Finding common files in:
echo Directory 1: %1
echo Directory 2: %2
echo.

echo Common files:
for %%f in ("%1\*.*") do (
    if exist "%2\%%~nxf" (
        echo %%~nxf
    )
)

echo.
echo Search completed!
pause
goto end

:error
echo Error: two directories required
echo Usage: %0 directory1 directory2
pause

:end