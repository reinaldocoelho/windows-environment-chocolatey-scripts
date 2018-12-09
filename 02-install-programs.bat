@echo off
REM Programas basicos
CALL cinst 7zip -y
CALL cinst GoogleChrome -y
CALL cinst ChocolateyGUI -y
CALL cinst notepadplusplus -y

REM Office
CALL cinst libreoffice -y
CALL cinst x-lite -y

REM Desenvolvimento
REM CALL cinst DotNet4.5.2 -y
REM CALL cinst DotNet4.6.1 -y
REM CALL cinst dotnetcore -y
CALL cinst dotnetcore-sdk -y
CALL cinst git -y
CALL cinst gitextensions -y
CALL cinst linqpad -y
REM CALL cinst dbeaver -y
CALL cinst nodejs -y
CALL cinst visualstudio2017community -y
CALL cinst visualstudiocode -y
CALL cinst mysql.workbench -y
CALL cinst mysql-cli -y
CALL cinst kdiff3 -y
CALL cinst plantuml -y REM Programa de desenho UML atraves de texto
REM Desenvolvimento opcionais
REM CALL cinst postman -y ## Programa para testes de urls, ótimo para validar e testar interface REST
REM CALL cinst catchlight -y ## Programa para acompanhamento de builds
CALL cinst putty -y
CALL cinst winscp -y
CALL cinst dotnet.script -y ## Permite a execução de .csx usando c# para scripts multi-plataforma.
choco install -y cake.portable ## Cake build.

REM Meus Programas
CALL cinst dropbox -y
CALL cinst rdcman -y
CALL cinst skype -y
REM CALL cinst nextcloud-client -y
CALL cinst seafile-client -y
CALL cinst vlc -y
REM CALL cinst iTunes -y
CALL cinst slack -y

REM Jogos
CALL cinst steam -y

REM Container
REM  Para o docker funcionar, e necessario estar com o windows atualizado e com a Feature Container instalada.
CALL cinst docker -y
CALL cinst docker-compose -y
CALL cinst docker-machine -y
CALL cinst docker-for-windows -y

REM VMs as a Code
REM CALL cinst vagrant -y
CALL cinst terraform -y
REM CALL cinst ??? -y

REM Projetos sem Chocolatey no momento
REM  CALL cinst cerebro -y ## https://cerebroapp.com/
REM  CALL cinst vsts-cli -y ## https://docs.microsoft.com/pt-br/cli/vsts/install?view=vsts-cli-latest
