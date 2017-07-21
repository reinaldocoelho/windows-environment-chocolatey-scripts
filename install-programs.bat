# Instala o chocolatey a partir do IE
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

# Programas
cinst 7zip -y
cinst DotNet4.5.2 -y
cinst DotNet4.6.1 -y
cinst dotnetcore -y
cinst dropbox -y
cinst git -y
cinst gitextensions -y
cinst GoogleChrome -y
cinst libreoffice -y
cinst linqpad -y
cinst nextcloud-client -y
cinst nodejs -y
cinst notepadplusplus -y
cinst rdcman -y
cinst skype -y
cinst visualstudio2017community -y
cinst visualstudiocode -y
cinst ChocolateyGUI -y