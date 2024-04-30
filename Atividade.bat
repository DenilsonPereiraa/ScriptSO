@echo off
chcp 65001 > nul
cls
:@echo off
chcp 65001 > nul
cls
:menu
cls
color 0b

date /t
echo.

echo Criadores 
echo Richard
echo Eduardo
echo Denilson
echo.
echo               ATIVIDADE
echo ---------------------------------------------
echo ^| 1. Limpar arquivos temporários  (dump)    ^|
echo ^| 2. Verificar espaço em discos             ^| 
echo ^| 3. Verificar Ip de rede e mascaras        ^|
echo ^| 4. Verificar Informações do sistema       ^|
echo ^| 5. Sair                                   ^|
echo ---------------------------------------------

set /p opcao= Escolha uma opcao: 
echo ------------------------------

if "%opcao%"=="1" goto limpar_temp
if "%opcao%"=="2" goto verificar_espaco
if "%opcao%"=="3" goto Verificando
if "%opcao%"=="4" goto Verifcar_Informações_Sistema
if "%opcao%"=="5" goto Sair

:limpar_temp
cls
echo Limpando arquivos temporários...
cleanmgr /sagerun:1
echo Arquivos temporários limpos com sucesso.
pause
goto menu

:verificar_espaco
echo Verificando espaço em disco...
wmic logicaldisk get caption,description,freespace,size
echo Espaço em disco verificado com sucesso.
pause
goto menu

:Verificando
echo Fazendo backup de arquivos importantes...
ipconfig
echo Backup concluído com sucesso.
pause
goto menu

:Verifcar_Informações_Sistema
cls
echo Verificando Informações do sistema...
systeminfo
echo Verificando Informações do sistema com sucesso.
pause
goto menu


:Sair
:loop
echo BBBBB  Y   Y  EEEEE
echo B    B  Y Y   E
echo BBBBB    Y    EEEE
echo B    B   Y    E
echo BBBBB    Y    EEEEE
timeout /t 1 >nul
cls
echo BBBBB  Y   Y  EEEEE
echo B    B  Y Y   E
echo BBBBB    Y    EEEE
echo B    B   Y    E
echo BBBBB    Y    EEEEE
timeout /t 1 >nul
goto exit.
pause
goto menu









