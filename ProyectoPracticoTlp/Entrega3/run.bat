@echo off
setlocal enabledelayedexpansion

REM Script de apoyo para Windows XP/Dev-C++ 5
REM Compila el motor en modo consola (C++98) y luego lo ejecuta.

pushd %~dp0

where g++ >nul 2>nul
if errorlevel 1 (
    echo No se encontro g++. Asegurate de que MinGW/Dev-C++ este en el PATH.
    pause
    popd
    exit /b 1
)

set SRCDIR=src
set BINDIR=bin
set TARGET=%BINDIR%\motor_integration.exe

if not exist %BINDIR% mkdir %BINDIR%

if not exist "%TARGET%" (
    echo Compilando...
    g++ -std=gnu++98 -Wall -Isrc %SRCDIR%\integration_main.cpp %SRCDIR%\engine\api.cpp %SRCDIR%\interpreter\script_interpreter.cpp -o %TARGET%
    if errorlevel 1 (
        echo Error en la compilacion. Revise los mensajes anteriores.
        pause
        popd
        exit /b 1
    )
)

echo Ejecutando motor (elige el juego en el menu)...
%TARGET%

echo.
echo Proceso finalizado.
pause

popd
endlocal
