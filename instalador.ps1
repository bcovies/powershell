Write-Host "Começando a configuração da sua máquina..."
$confirmacao = Read-Host  "Deseja continuar? [Y/n]:"

if ($confirmacao -eq 'y' -or $confirmacao -eq 'Y') {

    Write-Host $confirmacao

}
else {
    Write-Host "Saindo do programa. Obrigado por usar =)" -BackgroundColor Black
}

#New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
