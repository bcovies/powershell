# Faz checagem se é administrador
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
$currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

Write-Host "Início do script de automação de Windows 10"

$HOME_PATH = Get-Location

cd $HOME_PATH

Write-Host "Seu local de instalação é: $HOME_PATH"

Function test-winget-installed {
    Write-Host "Testando se winget está instalado na máquina..."
    if(Get-Command winget){
        Write-Host "Winget encontrado!"
        Write-Host "Seguindo com a instalação..."
    } else {
        Write-Host "Winget não encontrado, fazendo a instação do pacote Winget!!"
        install-winget
    }
} 

Function remove-unwanted-packages {
    Write-Host 'Iniciada a remoção de pacotes indesejados (os vírus da microsoft)'
    $x = 0
    $lista_pacotes_remover = @(
        'Cortana',
        'MSN Weather',
        'Get Help',
        'Microsoft Tips',
        'Paint 3D',
        'Microsoft Messaging',
        '3D Viewer',
        'Microsoft Solitaire Collection',
        'Office',
        'OneNote for Windows 10',
        'Mobile Plans',
        'Microsoft People',
        'Print 3D',
        'Snip & Sketch',
        'Skype',
        'Microsoft Pay',
        'Feedback Hub',
        'Xbox TCUI',
        'Xbox Console Companion',
        'Xbox Game Bar Plugin',
        'Xbox Game Bar',
        'Xbox Identity Provider',
        'Xbox Game Speech Window',
        'Your Phone',
        'Groove Music',
        'Films & TV',
        'Microsoft OneDrive'
    )

    while ( $x -lt $lista_pacotes_remover.Length) {
        winget uninstall --name $lista_pacotes_remover[$x]
        Write-Host "Removido pacote:" $lista_pacotes_remover[$x]
        $x++
    }
}

Function install-winget {
    Write-Host "Inicializando a instalação do winget ..."

    $ZIP_FILE_EXISTS = Test-Path -Path ".\winget-offline-installer.zip" -PathType Leaf

    if($ZIP_FILE_EXISTS){
        Expand-Archive -LiteralPath ".\winget-offline-installer.zip"  -DestinationPath ".\instalador-winget"
        if ($?){
            Write-Host "Arquivo winget-offline-installer.zip extraído com sucesso!"
        } else {
            Write-Host "Erro ao executar extração do arquivo winget-offline-installer.zip"
            exit 1
        }
    
        Add-AppxPackage -Path ".\instalador-winget\Microsoft.VCLibs.x64.14.00.Desktop.appx"
        if ($?){
            Write-Host "Instalado pacote: Microsoft.VCLibs.x64.14.00.Desktop.appx"
        } else {
            Write-Host "Erro ao executar instalação do arquivo: Microsoft.VCLibs.x64.14.00.Desktop.appx"
            exit 1
        }
    
        Add-AppxPackage -Path ".\instalador-winget\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
        if ($?){
            Write-Host "Instalado pacote: Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
        } else {
            Write-Host "Erro ao executar instalação do arquivo: Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
            exit 1
        }

    } else {
        Write-Host "Arquivo winget-offline-installer.zip não encontrado!"
    }

}

Function change-to-darkmode {
    
    $REGEDIT_THEME_PATH = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
    $REGEDIT_WALLPAPER_PATH = "HKCU:\Control Panel\Desktop"

    Set-ItemProperty -Path "$REGEDIT_THEME_PATH" -Name "SystemUsesLightTheme" -Value 0
    Set-ItemProperty -Path "$REGEDIT_THEME_PATH" -Name "AppsUseLightTheme" -Value 0
    # Set-ItemProperty -Path "$REGEDIT_WALLPAPER_PATH" -Name "WallPaper" -Value ".\wallpaper.png"
    
    # rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

Function install-dev-packages {
    Write-Host 'Iniciada a instalação de pacotes de desenvolvedor'
    $x = 0
    $lista_pacotes_instalar = @(
        'Git.Git',
        'GitHub.GitLFS',
        'GitHub.GitHubDesktop',
        'Microsoft.VisualStudioCode', 
        'GitHub.Atom',
        'Notepad++.Notepad++', 
        'WinSCP.WinSCP',
        'Canonical.Ubuntu',
        'Debian.Debian',
        'Microsoft.PowerShell',
        'Microsoft.WindowsTerminal', 
        'Amazon.AWSCLI',
        'OpenJS.NodeJS',
        'Oracle.JDK.17',
        'Oracle.JavaRuntimeEnvironment',
        'Python.Python.2',
        'Python.Python.3',
        'GoLang.Go',
        'RubyInstallerTeam.Ruby',
        'Oracle.VirtualBox', 
        'Hashicorp.Vagrant',
        'Docker.DockerDesktop',
        'RedHat.Podman',
        'Kubernetes.minikube')
    
    while ( $x -lt $lista_pacotes_instalar.Length) {
        winget install $lista_pacotes_instalar[$x]
        Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
        $x++
    }
}

Function install-commom-packages {
    Write-Host 'Iniciada a instalação de pacotes comuns'
    $x = 0
    $lista_pacotes_instalar = @(
        'Flameshot.Flameshot',
        '7zip.7zip',
        'WhatsApp.WhatsApp', 
        'Discord.Discord',
        'Telegram.TelegramDesktop',
        'Google.Chrome',
        'BraveSoftware.BraveBrowser',
        'Mozilla.Firefox',
        'Spotify.Spotify',
        'qBittorrent.qBittorrent')

    while ( $x -lt $lista_pacotes_instalar.Length) {
        winget install $lista_pacotes_instalar[$x]
        Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
        $x++
    }
}

Function download-some-packages {
    $DOWNLOAD_FOLDER_EXISTS =  Test-Path -Path ".\download" -PathType Leaf 
    if ($DOWNLOAD_FOLDER_EXISTS){
        Write-Host "Pasta downloads já existente!!"
    }else{
        Write-Host "Pasta downloads não existe!!"
        New-Item -Path ".\download" -ItemType Directory
    }
    # Write-Host "Baixando eclipse IDE..."
    # curl.exe -L -o ".\download\eclipse.zip" "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2021-12/R/eclipse-jee-2021-12-R-win32-x86_64.zip&mirror_id=576"
    
    # $ECLIPSE_FILE_EXISTS = Test-Path -Path ".\download\eclipse.zip" -PathType Leaf
    # if ($ECLIPSE_FILE_EXISTS){
    #     Write-Host "Arquivo eclipse.zip encontrado com sucesso..."
    #     Expand-Archive -LiteralPath ".\download\eclipse.zip"  -DestinationPath ".\EclipeIDE"
    #     if ($?){
    #         Write-Host "Arquivo extraído com sucesso!"
    #     }
    # }

    curl.exe -L -o  ".\download\wsl_update_x64.msi"  "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"

    $WSL_UPDATE_FILE_EXISTS = Test-Path -Path ".\download\wsl_update_x64.msi" -PathType Leaf
    if ($WSL_UPDATE_FILE_EXISTS){
        Write-Host "Arquivo wsl_update_x64.msi encontrado com sucesso..."
        .\download\wsl_update_x64.msi
        if ($?){
            Write-Host "Arquivo extraído com sucesso!"
            wsl --set-default-version 2
        }
    }

}
Function install-windows-features {

    Write-Host "Instalando recursos online do Windows ..."
    Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "HypervisorPlatform" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Containers" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Windows-Defender-ApplicationGuard" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Tools-All" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-PowerShell" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Hypervisor" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Services" -All -NoRestart
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-Management-Clients" -All -NoRestart

}
Function main {
    # Desabilita o controle de usuário para ser mais rápido
    Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0

    change-to-darkmode 
    test-winget-installed
    remove-unwanted-packages
    install-commom-packages
    install-dev-packages
    install-windows-features
    download-some-packages

    # Habilita novamente o controle de usuário
    Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 1
}

main

Read-Host "Finalizado. Pressione qualquer tecla para sair..."
