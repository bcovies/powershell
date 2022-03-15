Start-Process powershell -Verb #Requires -RunAsAdministrator


#Requires -RunAsAdministrator
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All
Enable-WindowsOptionalFeature -Online -FeatureName "HypervisorPlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Containers" -All
Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Windows-Defender-ApplicationGuard" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Tools-All" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-PowerShell" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Hypervisor" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Services" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-Clients" -All

curl.exe -L -o wsl_update_x64.msi "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"
.\wsl_update_x64.msi

wsl --set-default-version 2
 
Read-Host "Finalizado. Pressione qualquer tecla para sair..."