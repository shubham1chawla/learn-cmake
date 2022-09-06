:: @echo off will turn off the printing, even the echo off statement
@echo off
setlocal

set PROJECT_DIR=%1

:: Deleting build folder if no project directory provided
if "%PROJECT_DIR%"=="" (
    del /s /q build\*
    rmdir /s /q build
    goto eof
)

:: Deleting only specific project's build if exists
if exist build (
    cd build
    del /s /q %PROJECT_DIR%\*
    rmdir /s /q %PROJECT_DIR%
    cd ..
    goto eof
)

:eof
exit /B 0
:: /B is required to not close txhe cmd window