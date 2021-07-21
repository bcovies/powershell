Write-Host "Inicializada a instalação do winget"

Expand-Archive -LiteralPath ".\winget-offline-installer.zip"  -DestinationPath ".\instalador-winget"
Write-Host "Extraído"

Add-AppxPackage -Path ".\instalador-winget\Microsoft.VCLibs.x64.14.00.Desktop.appx"
Write-Host "Instalado pacote base do winget"

Add-AppxPackage -Path ".\instalador-winget\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
Write-Host "Instalado winget"