@echo off
title Apagador Multifuncional
color 0a

:menu
echo Bem Vindo ao apagador multifuncional, escolha uma das opcoes:
echo.
echo 1- Apagar UM arquivo
echo.
echo 2- Apagar um diretorio inteiro
echo.
echo 3- Transformar os arquivos de um diretorio em outros arquivos
echo.
echo 5- Sair desse programa
echo.

    set /p escolha=Digite a opcao:
    echo.
    if %escolha% EQU 1 (goto apagar)
    if %escolha% EQU 2 (goto apagarint)
    if %escolha% EQU 3 (goto transformar)
	if %escolha% EQU 4 (goto openuni)
	if %escolha% EQU 5 (goto sair)

	
        :apagar
        set /p dir=Digite o diretorio COMPLETO: 
        echo.
        cd\
        CD %dir%
        dir
        echo Diretorio aberto com sucesso
        echo.
        set /p arquivo=Digite o arquivo a ser deletado:
        DEL %arquivo% 
        cls
        goto menu

	   
			:apagarint
			set /p resposta=Realmente deseja apagar um diretorio especifico "digite sim ou nao"?:
			if %resposta% EQU sim (goto sim)
			if %resposta% EQU nao (exit
			MSG * Voce escolheu sair)
			

	:sim
	set /p int=Digite o diretorio COMPLETO aqui:
	cd\
	CD %int%
	DEL *
	echo.
	echo Diretorio deletado com sucesso
	
	                        :nao
				exit
				MSG * Voce disse que nao queria realizar a operacao selecionada entao eu sai...


			:transformar
			if %escolha% EQU 3 (set /p transf=Digite o diretorio que deseja transformar:)
			if %transf% NEQ ndhds (cd\
			CD %transf%)
			cls
			echo Diretorio aberto com sucesso.
			echo.
			echo Deseja transformar os arquivos dessa pasta em que "insira a opcao"
			echo.
			echo 1- TXT
			echo.
			echo 2- RAR
			echo.
			echo 3- MP3
			echo.
			echo 4- TMP
			echo.
			set /p opcao=Digite a opcao: 
			if %opcao% EQU 1 (ren * *.txt) 
			if %opcao% EQU 2 (ren * *.rar)
			if %opcao% EQU 3 (ren * *.mp3)
			if %opcao% EQU 4 (ren * *.tmp)
			cls
			echo Operacao concluida, aperte Enter para voltar ao menu...
			pause
			cls
			goto menu


         :sair
	 exit
	
