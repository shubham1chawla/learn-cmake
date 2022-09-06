:: @echo off will turn off the printing, even the echo off statement
@echo off
setlocal

:: Checking if project directory is provided
set PROJECT_DIR=%1
if "%PROJECT_DIR%"=="" goto directory_error
if not exist %PROJECT_DIR% goto directory_error

:: Setting default cmake generator if not specified
set CMAKE_GENERATOR=%2
if "%CMAKE_GENERATOR%"=="" set CMAKE_GENERATOR="MinGW Makefiles"

:: Triggering fresh build
cmake -S %PROJECT_DIR%\ -B build\%PROJECT_DIR%\ -G %CMAKE_GENERATOR%
exit /B 0

:directory_error
@echo on
@echo Project directory "%PROJECT_DIR%" is either invalid or doesn't exist!
@echo off
goto error

:error
@echo on
@echo "Usage - make <directory> [CMake Generator]"
@echo off
exit /B 1
:: /B is required to not close txhe cmd window