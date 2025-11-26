@echo off

:Menu
cls
echo ============================
echo             MENU
echo ============================
echo 1. Say Hello
echo 2. Create a File
echo 3. Exit
echo ============================
set /p choice=Enter your choice: 

if "%choice%"=="1" goto Hello
if "%choice%"=="2" goto CreateFile
if "%choice%"=="3" goto Exit

echo Invalid option!
pause
goto Menu

:Hello
echo Hello, World!
pause
goto Menu

:CreateFile
echo This is a new file > newfile.txt
echo newfile.txt created successfully.
pause
goto Menu

:Exit
echo Goodbye!
pause
exit
