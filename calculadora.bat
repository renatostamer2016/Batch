@echo off
title Calculadora 
color 0a

:valores
set /p a=Insira o primeiro valor:
echo.
set /p b=Insira o segundo valor:

			:menu
			color 0a
			echo 1- Soma
			echo.
			echo 2- Subtracao
			echo.
			echo 3- Multiplicacao
			echo.
			echo 4- Divisao 
			echo.
			echo 5- Sair da calculadora 

	set /p opcao=Digite a opcao:
    echo.
    if %opcao% EQU 1 (goto soma)
    if %opcao% EQU 2 (goto subtracao)
    if %opcao% EQU 3 (goto multiplicacao)
    if %opcao% EQU 4 (goto divisao)
    if %opcao% EQU 5 (exit)	
    if %opcao% GTR 5 (goto invalida)

		:soma
		set /a resultado=%a% + %b%
		echo.
		echo O resultado e igual a %resultado%
		echo.
		echo Aperte Enter para realizar outra operacao...
		pause
		cls
		goto valores

			:subtracao
			set /a resultado=%a% - %b%
			echo.
			echo O resultado e igual a %resultado%
			echo.
			echo Aperte Enter para realizar outra operacao...
			pause 
			cls
			goto valores

		:multiplicacao
		set /a resultado=%a% * %b%
		echo.
		echo O resultado e igual a %resultado%
		echo.
		echo Aperte Enter para realizar outra operacao...
		echo.
		pause
		cls
		goto valores

	:divisao
	set /a resultado=%a% / %b%
	echo.
	echo O resultado e igual a %resultado%
	echo.
	echo Aperte Enter para realizar outra operacao...
	pause
	cls
	goto menu

:invalida
color 0c
echo Opcao Invalida, aperte Enter para fazer outra operacao...
MSG * Opcao invalida, feche essa mensagem e aperte Enter para fazer outra operacao...
pause
cls
goto valores
