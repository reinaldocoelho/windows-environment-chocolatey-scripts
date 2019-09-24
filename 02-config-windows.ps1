#######################################################
### PASSO 1 - Efetua liberação de acesso ao powershell.
#######################################################
Set-ExecutionPolicy Bypass -Scope Process

# ##############################################################################################
### PASSO 2 - Efetua um teste de conexão com a internet para garantir os recursos necessários.
###     ALERTA: O Windows tem comandos diferentes de acordo com a sua versão, se os comandos abaixo 
###             não funcionarem, verifique: https://peter.hahndorf.eu/blog/WindowsFeatureViaCmd.html
# ##############################################################################################
Write-Host "Verificando se ha conexao com a internet..."
$hasInternet = (Test-Connection google.com -Count 3 -Quiet);
if ($hasInternet -eq $false) {
    Write-Host "Concluido teste de internet com FALHA..."
    return $false 
}
Write-Host "Concluido teste de internet com sucesso..."

Write-Host "Instalando recurso Hostable Web Core"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HostableWebCore" -NoRestart

Write-Host "Instalando HTTP Redirect"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpRedirect" -NoRestart

Write-Host "Instalando WebDAV (File access and manipulation. More: https://www.cloudwards.net/what-is-webdav/)"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebDAV" -NoRestart

Write-Host "Instalando recurso WebSocket"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebSockets" -NoRestart

Write-Host "Instalando Logging IIS"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-CustomLogging" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpLogging" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-LoggingLibraries" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ODBCLogging" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ManagementScriptingTools" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpTracing" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-RequestMonitor" -NoRestart

Write-Host "Instalando DotNetFramework"
Enable-WindowsOptionalFeature -Online -FeatureName "WCF-Services45" -NoRestart

Write-Host "Ativando recurso: ASPNET45"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ASPNET45" -NoRestart # -LimitAccess

## Detalhes em: https://docs.microsoft.com/en-us/iis/install/installing-iis-85/installing-iis-85-on-windows-server-2012-r2
Write-Host "Instalando recurso: IIS"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebServer" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WebServerManagementTools" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ManagementConsole" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-DefaultDocument" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpLogging" -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-LoggingLibraries" -NoRestart

Write-Host "Instalando recurso: Application Initialization"
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ApplicationInit" -NoRestart

## Outros apoios opcionais:
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -NoRestart
