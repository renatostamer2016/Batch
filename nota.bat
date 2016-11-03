@echo off
title Nota
color 0a

set /p nota=Digite a sua nota:
echo.

        :: Se a nota for igual a 5,6,7,8,9 ou 10 redirecione para a etiqueta azul
        if %nota% EQU 5 (goto azul)
		if %nota% EQU 6 (goto azul)
		if %nota% EQU 7 (goto azul)
		if %nota% EQU 8 (goto azul)
		if %nota% EQU 9 (goto azul)
		if %nota% EQU 10 (goto azul)
		
	  :: Se a nota for menor que 5, redirecione para a etiqueta vermelha
	  if %nota% LSS 5 (goto vermelha)
		   
		   
		        :azul
		        color 09
		        echo Parabens, voce tirou uma boa nota, a sua nota foi %nota%, aperte Enter para sair...
		        echo.
		        pause
		        exit
		   
		   :vermelha
		   color 0c
		   echo Voce tirou uma nota ruim, a sua nota foi %nota%, aperte Enter para sair...
		   echo.
		   pause
		   exit
	   
