@echo off
title Jogo 
color 0c
echo Bem Vindo ao Jogo, Boa Sorte...
echo.
set /p pass=Digite a senha correta e se mantenha vivo:
echo.
if %pass% EQU jogomaldito (goto acerto) 
if %pass% NEQ jogomaldito (goto erro)


      :: Aqui começa o bloco do acerto
      :acerto
      cls
      MSG * Parabens, voce acertou, feche essa mensagem e aperte Enter para sair...
      echo Parabens, voce acertou, aperte Enter para sair...
      pause
      exit
	  

:: Aqui começa o bloco do erro
:erro
set /p senha=Sinto muito, mas voce errou a senha, tente novamente:
echo.
if %senha% EQU jogomaldito (goto acerto) 
if %senha% NEQ jogomaldito (goto erro)
