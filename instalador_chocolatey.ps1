Write-Host "Inicio do instalador de aplicações via chocolatey"

$instaladorAdministrativo = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())

$ehAdministrador = $instaladorAdministrativo.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)


Write-Host $ehAdministrador

if ($ehAdministrador  ) {
    Write-Host "Modo de administrador ativo, prosseguindo."
}
else {
    Write-Host "Para instalação dos aplicativos é necessária a inicialização do powershell em modo administrativo."
}

Read-Host "Pressione qualquer tecla para sair..."