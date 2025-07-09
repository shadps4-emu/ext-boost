@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Usage: %0 path\to\boost
    exit /b 1
)

set BOOST_SRC=%1

set LIBS=
for /f "usebackq delims=" %%a in ("boost_libs.txt") do (
    set LIBS=!LIBS! %%a
)

bcp %LIBS% --boost="%BOOST_SRC%" .
