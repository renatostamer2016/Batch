@echo off
title Nota
color 0a
set /p nota=Insira a sua nota:
echo.


		:: Aqui começa o bloco das notas azuis
		:menu
		if %nota% GTR 10 (goto invalida)
		if %nota% GTR 4 (color 09)
		if %nota% EQU 5 (echo Aprovado, a sua nota foi 5) 
		if %nota% EQU 6 (echo Aprovado, a sua nota foi 6)
		if %nota% EQU 7 (echo Aprovado, a sua nota foi 7)
		if %nota% EQU 8 (echo Aprovado, a sua nota foi 8)
		if %nota% EQU 9 (echo Aprovado, a sua nota foi 9)
		if %nota% EQU 10 (echo Aprovado, a sua nota foi 10)
		

:: Aqui começa o bloco das notas vermelhas
:vermelhas
if %nota% LSS 5 (color 0c)
if %nota% EQU 4 (echo Reprovado, a sua nota foi 4)
if %nota% EQU 3 (echo Reprovado, a sua nota foi 3)
if %nota% EQU 2 (echo Reprovado, a sua nota foi 2)
if %nota% EQU 1 (echo Reprovado, a sua nota foi 1)
if %nota% EQU 0 (echo Reprovado, a sua nota foi 0)


			
