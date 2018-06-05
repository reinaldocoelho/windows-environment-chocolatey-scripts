@echo off
REM Programas basicos
cinst 7zip -y
cinst GoogleChrome -y
cinst ChocolateyGUI -y
cinst notepadplusplus -y

REM Office
cinst libreoffice -y

REM Desenvolvimento
REM cinst DotNet4.5.2 -y
cinst DotNet4.6.1 -y
REM cinst dotnetcore -y
cinst dotnetcore-sdk -y
cinst git -y
cinst gitextensions -y
REM cinst linqpad -y
cinst dbeaver -y
cinst nodejs -y
cinst visualstudio2017community -y
cinst visualstudiocode -y
REM cinst mysql.workbench -y
cinst mysql-cli -y
cinst kdiff3 -y
cinst plantuml -y REM Programa de desenho UML atraves de texto
REM Desenvolvimento opcionais
REM cinst postman -y ## Programa para testes de urls, ótimo para validar e testar interface REST
REM cinst catchlight -y ## Programa para acompanhamento de builds
cinst putty -y
cinst winscp -y
cinst dotnet.script -y ## Permite a execução de .csx usando c# para scripts multi-plataforma.
choco install -y cake.portable ## Cake build.

REM Meus Programas
cinst dropbox -y
cinst rdcman -y
cinst skype -y
cinst nextcloud-client -y
cinst vlc -y
cinst iTunes -y
cinst slack -y

REM Jogos
cinst steam -y

REM Container
REM  Para o docker funcionar, e necessario estar com o windows atualizado e com a Feature Container instalada.
cinst docker -y
cinst docker-compose -y
cinst docker-machine -y
cinst docker-for-windows -y

REM VMs as a Code
REM cinst vagrant -y
cinst terraform -y
REM cinst ??? -y

REM Projetos sem Chocolatey no momento
REM  cinst cerebro -y ## https://cerebroapp.com/
REM  cinst vsts-cli -y ## https://docs.microsoft.com/pt-br/cli/vsts/install?view=vsts-cli-latest
