@echo off
set n=5
set result=1
for /l %%i in (1,1,%n%) do (
    set /a result=result*%%i
)
echo %n%! = %result%
pause