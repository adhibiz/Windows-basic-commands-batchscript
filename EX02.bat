@echo off

:Start
set /p num=Enter a number: 
set /a rem=%num% %% 2

if %rem%==1 (
    echo %num% is ODD.
) else (
    echo %num% is EVEN.
)

:Ask
set /p choice=Do you want to check another number (Y/N)? 

if /i "%choice%"=="Y" goto Start
if /i "%choice%"=="N" goto End

echo Invalid input. Please enter only Y or N.
goto Ask

:End
echo Thank you for using the program!
pause
