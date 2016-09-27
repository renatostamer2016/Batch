@echo off 
title Jogo
color 0a
   set senha="haha"
  echo  Vamos Iniciar o Jogo, Seu Filho da Puta:
for /l %%t in (1,1,3) do ( 
  echo Vc tem 3 Chances para virar meu "Amigo" ou mato seu Sistema: %%t/3:
   set /p resposta= Digite a Senha Correta e se mantenha Vivo: 
        if "%senha%" == "%senha%" ( 
  echo Parabens, merece ter o seu sistema funcionando amigao
    pause 
  EXIT 
    ) 


          if %%t == 3 ( 
          if "%resposta%" NEQ "%pass%" ( 
   echo Sinto muito, perdeu as suas chances, game over perdedor...
     shutdown -r -t 30 -c "Troxa, seu HD vai ser deletado em 30 segundos"
   EXIT 
   ) 
  ) 
)
