# Windows-basic-commands-batchscript

Ex08-Windows-basic-commands-batchscript

# AIM:

To execute Windows basic commands and batch scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Windows environment installed on the system or installed inside a virtual environment like virtual box/vmware

### Step 2:

Write the Windows commands / batch file . Save each script in a file with a .bat extension. Ensure you have the necessary permissions to perform the operations. Adapt paths as needed based on your system configuration.

### Step 3:

Execute the necessary commands/batch file for the desired output.

# WINDOWS COMMANDS:

## Exercise 1: Basic Directory and File Operations

Create a directory named "my-folder"

## COMMAND AND OUTPUT

```
mkdir my-folder
```

![alt text](IMG/image.png)

<br>
Remove the directory "my-folder"

## COMMAND AND OUTPUT

```
rmdir my-folder
```

![alt text](IMG/image-1.png)

Create the file Rose.txt

## COMMAND AND OUTPUT

```
type nul > Rose.txt
```

![alt text](IMG/image-2.png)

Create the file hello.txt using echo and redirection

## COMMAND AND OUTPUT

```
echo Hello World > hello.txt
```

![alt text](IMG/image-3.png)

Copy the file hello.txt into the file hello1.txt

## COMMAND AND OUTPUT

```
copy hello.txt hello1.txt
```

![alt text](IMG/image-4.png)

Remove the file hello1.txt

## COMMAND AND OUTPUT

```
del hello1.txt
```

![alt text](IMG/image-5.png)

List out the file hello1.txt in the current directory

## COMMAND AND OUTPUT

```
dir hello1.txt
```

![alt text](IMG/image-6.png)

List out all the associated file extensions

## COMMAND AND OUTPUT

```
assoc
```

![alt text](IMG/image-7.png)

Compare the file hello.txt and rose.txt

## COMMAND AND OUTPUT

```
fc hello.txt Rose.txt
```

![alt text](IMG/image-8.png)

## Exercise 2: Advanced Batch Scripting

Create a batch file named on the desktop. The batch file need to have a variable assigned with a desired name for ex. name="John" and display as "Hello, John".

```
![alt text](IMG/image-10.png)
```

## OUTPUT

![alt text](IMG/image-9.png)

Create a batch file on the desktop that checks whether a user-input number is odd or not. The script should:
Prompt the user to enter a number.
Calculate the remainder when the number is divided by 2.
Display whether the number is odd or not.
Ask the user if they want to check another number.
Repeat the process if the user enters Y, and exit with a thank-you message if the user enters N.
Handle invalid inputs for the continuation prompt (Y/N) gracefully.

```
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

```

## OUTPUT

![alt text](IMG/image-11.png)

Write a batch file that uses a FOR loop to iterate over a sequence of numbers (1 to 5) and displays each number with the label Number:. The output should pause at the end.

```
@echo off
for /l %%i in (1,1,5) do (
    echo Number: %%i
)
pause

```

## OUTPUT

![alt text](IMG/image-13.png)

Write a batch script to check whether a file named sample.txt exists in the current directory. If the file exists, display the message sample.txt exists. Otherwise, display sample.txt does not exist. Pause the script at the end to view the result.

Instructions:
Use the IF EXIST conditional statement.
Make sure the script works for files located in the same directory as the batch file.
Use pause to keep the command window open after displaying the message.
Expected Output (if the file exists):

```
@echo off
if exist sample.txt (
    echo sample.txt exists.
) else (
    echo sample.txt does not exist.
)
pause
```

## OUTPUT

![alt text](IMG/image-14.png)
![alt text](IMG/image-15.png)

Write a batch script that displays a simple menu with three options:
Say Hello – Displays the message Hello, World!
Create a File – Creates a file named newfile.txt with the content This is a new file
Exit – Exits the script with a goodbye message
The script should repeatedly display the menu until the user chooses to exit. Use goto statements to handle menu navigation.

```
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
```

## OUTPUT

![alt text](IMG/image-16.png)
![alt text](IMG/image-17.png)
![alt text](IMG/image-18.png)

# RESULT:

The commands/batch files are executed successfully.
