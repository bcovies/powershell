Write-Host "Inicio do instalador de aplicações via chocolatey"
if ($ehAdministrador  ) {
    Write-Host "Modo de administrador ativo, prosseguindo."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
    Write-Host "Para instalação dos aplicativos é necessária a inicialização do powershell em modo administrativo."
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."