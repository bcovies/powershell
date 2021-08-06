Start-Process powershell -Verb #Requires -RunAsAdministrator


#Requires -RunAsAdministrator
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Windows-Defender-ApplicationGuard" -All

Read-Host "Finalizado. Pressione qualquer tecla para sair..."