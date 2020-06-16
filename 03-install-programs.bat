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
CALL cinst dotnetcore-sdk -y
CALL cinst git -y
CALL cinst gitextensions -y
CALL cinst linqpad -y
REM CALL cinst dbeaver -y
CALL cinst sql-server-management-studio -y
CALL cinst nodejs -y
CALL cinst visualstudio2017community -y
CALL cinst visualstudiocode -y
REM CALL cinst mysql.workbench -y
CALL cinst mysql-cli -y
CALL cinst kdiff3 -y
CALL cinst plantuml -y REM Programa de desenho UML atraves de texto
REM Desenvolvimento opcionais
REM CALL cinst postman -y ## Programa para testes de urls, ótimo para validar e testar interface REST
REM CALL cinst catchlight -y ## Programa para acompanhamento de builds
CALL cinst putty -y
CALL cinst winscp -y
CALL cinst dotnet.script -y REM Permite a execução de .csx usando c# para scripts multi-plataforma.
CALL cinst -y cake.portable REM Cake build.
CALL cinst -y NuGet.CommandLine REM NUGET CLIENT

REM Meus Programas
CALL cinst dropbox -y
REM CALL cinst rdcman -y
REM CALL cinst MobaXterm -y
CALL cinst mRemoteNG -y
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
CALL cinst docker-desktop -y

REM VMs as a Code
REM CALL cinst vagrant -y
CALL cinst terraform -y
REM CALL cinst ??? -y
CALL cinst packer -y

REM Projetos sem Chocolatey no momento
REM  CALL cinst cerebro -y ## https://cerebroapp.com/
REM  CALL cinst vsts-cli -y ## https://docs.microsoft.com/pt-br/cli/vsts/install?view=vsts-cli-latest

REM Instala os plugins do VSCode
CALL code --install-extension berublan.vscode-log-viewer
CALL code --install-extension cake-build.cake-vscode
CALL code --install-extension DavidAnson.vscode-markdownlint
CALL code --install-extension dunstontc.viml
CALL code --install-extension emilast.LogFileHighlighter
CALL code --install-extension erd0s.terraform-autocomplete
CALL code --install-extension formulahendry.dotnet-test-explorer
CALL code --install-extension humao.rest-client
CALL code --install-extension jebbs.plantuml
CALL code --install-extension k--kato.docomment
CALL code --install-extension leighlondon.eml
CALL code --install-extension mauve.terraform
CALL code --install-extension ms-mssql.mssql
CALL code --install-extension ms-vscode.csharp
CALL code --install-extension ms-vscode.PowerShell
CALL code --install-extension ms-vscode.vs-keybindings
CALL code --install-extension PeterJausovec.vscode-docker
CALL code --install-extension run-at-scale.terraform-doc-snippets
CALL code --install-extension tht13.html-preview-vscode
REM CALL code --install-extension remote.SSH REM Precisa do VSCode Insider
