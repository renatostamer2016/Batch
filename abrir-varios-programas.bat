@echo off
title Abrir Varios Programas
color 0a

:: Esse é o menu 
:menu
echo Os programas disponiveis sao:
echo.
echo 1-notepad
echo.
echo 2-regedit
echo.
echo 3-calc
echo.
echo 4-notepad++
echo.

set /p prog=Digite o numero do programa que deseja abrir: 
if %prog% EQU 1 (start notepad.exe)
echo.
if %prog% EQU 2 (start regedit.exe)
echo.
if %prog% EQU 3 (start calc.exe)
echo.
if %prog% EQU 4 (start notepad++.exe)
echo.
if %prog% GTR 4 (cls 
color 0c 
MSG * Opcao invalida, feche essa mensagem e aperte Enter para tentar novamente...

pause
echo.
goto menu 
