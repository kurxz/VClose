@ECHO OFF
chcp 65001
cls
title Encerramento de GTA5 por CMD

ECHO Download em: https://github.com/kurxz/VClose
ECHO Caso não consiga abrir/fechar o jogo. Este aplicativo irá encerrá-lo.
ECHO Se não funcionar corretamente, tente abrir como administrador.

:inicio
SET escolha=
SET /p escolha=Deseja prosseguir agora? [S/N]: 
IF NOT '%escolha%'=='' SET escolha=%escolha:~0,1%
IF '%escolha%'=='S' GOTO sim
IF '%escolha%'=='s' GOTO sim
IF '%escolha%'=='N' GOTO nao
IF '%escolha%'=='n' GOTO nao
IF '%escolha%'=='' GOTO nao
ECHO Sua escolha "%escolha%" é inválida
ECHO.
GOTO inicio

:sim

title Aguarde...

taskkill /im GTAV.exe /f 
taskkill /im PlayGTAV.exe /f 
taskkill /im GTAVLauncher.exe /f 
taskkill /im Launcher.exe /f 
taskkill /im SocialClubHelper.exe /f 
taskkill /im RockstarSteamHelper.exe /f 

title Concluído
ECHO Os comandos foram enviados com sucesso.

PAUSE
EXIT

:nao
ECHO Este aplicativo será encerrado
PAUSE
EXIT