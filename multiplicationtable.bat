@echo off
setlocal enabledelayedexpansion

:: Ask for user input
set /p num=Enter an integer: 

:: Check if input is a valid integer
if not defined num (
    echo Invalid input. Please enter a valid integer.
    exit /b
)

:: Create reverse multiplication table
for /l %%i in (10,-1,1) do (
    set /a result=!num! * %%i
    echo !num! * %%i = !result!
)

pause
