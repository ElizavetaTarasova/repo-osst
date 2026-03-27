@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
    echo Error: no directory specified
    echo Usage: %0 directory
    pause
    exit /b
)

set count=0
for /d /r "%1" %%i in (*) do (
    set /a count+=1
)

echo Number of subdirectories in "%1" and all its subdirectories: %count%
pause