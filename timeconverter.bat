@echo off
setlocal enabledelayedexpansion

:input
echo Enter time in 24-hour format (HH:MM):
set /p time24=
if "%time24%"=="" goto input

set hour24=%time24:~0,2%
set minute=%time24:~3,2%

if "%hour24%" geq "00" if "%hour24%" leq "23" if "%minute%" geq "00" if "%minute%" leq "59" (
    rem Valid input
) else (
    echo Invalid time format.
    goto input
)

set /a hour12=hour24 %% 12
if "%hour12%"=="0" set hour12=12

if "%hour24%" geq "12" (
    set period=PM
) else (
    set period=AM
)

echo %hour12%:%minute% %period%
pause
