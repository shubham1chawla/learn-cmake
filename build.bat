:: @echo off will turn off the printing, even the echo off statement
@echo off
setlocal

set PROJECT_DIR=%1

if "%PROJECT_DIR%"=="" goto directory_error
if not exist %PROJECT_DIR% goto directory_error
if not exist build\%PROJECT_DIR% goto complie_error

:: Triggering build
cd build\%PROJECT_DIR% && mingw32-make
cd ..
exit /B 0

:directory_error
@echo on
@echo Project directory "%PROJECT_DIR%" is either invalid or doesn't exist!
@echo off
exit /B 1

:complie_error
@echo on
@echo Please "make" project "%PROJECT_DIR%"!
@echo off
exit /B 1
:: /B is required to not close txhe cmd window