#Requires -RunAsAdministrator
Disable-WindowsOptionalFeature -Online -FeatureName "TelnetClient"
Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux"
Disable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM"
Disable-WindowsOptionalFeature -Online -FeatureName "Windows-Defender-ApplicationGuard"
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
