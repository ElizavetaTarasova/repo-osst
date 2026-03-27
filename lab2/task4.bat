@echo off
if "%1"=="" (
    echo Error: no directory specified
    echo Usage: %0 directory extension
    pause
    exit /b
)
if "%2"=="" (
    echo Error: no extension specified
    echo Usage: %0 directory extension
    pause
    exit /b
)

echo ============================================
echo FILE LISTER SCRIPT
echo ============================================
echo Directory: %1
echo Extension: .%2
echo.
echo Files found:

for %%f in ("%1\*.%2") do (
    echo %%~nxf
)

echo.
echo Script completed!
pause