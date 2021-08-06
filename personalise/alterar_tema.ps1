Write-Host "Inicio da configuração de tema da sua máquina..."
$caminhoPersonalizacaoTema = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$nomePersonalizacaoTema = "AppsUseLightTheme"
Write-Host "Deseja alternar o tema do windows?"
$confirmacao = Read-Host "[y/Y] - Sim"
if ($confirmacao -eq 'y' -or $confirmacao -eq 'Y') {
    $valor = Get-ItemPropertyValue -Path "$caminhoPersonalizacaoTema" -Name "$nomePersonalizacaoTema"
    if ( $valor -eq '0' ) {
        Set-ItemProperty -Path "$caminhoPersonalizacaoTema" -Name "$nomePersonalizacaoTema" -Value 1
        Write-Host "Tema alterado para claro" -BackgroundColor White -ForegroundColor Red
    }
    else {
        Set-ItemProperty -Path "$caminhoPersonalizacaoTema" -Name "$nomePersonalizacaoTema" -Value 0
        Write-Host "Tema alterado para escuro" -BackgroundColor Black -ForegroundColor Green
    }
}
else {
    Write-Host "Tema inalterado."
}

Read-Host "Pressione qualquer tecla para terminar o programa"