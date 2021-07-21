Write-Host 'Iniciada a instalação de pacotes'
#Instalação dos seguintes pacotes:
# vscode            Microsoft.VisualStudioCode
# notepad++         Notepad++.Notepad++
# virtualbox        Oracle.VirtualBox
# slack             SlackTechnologies.Slack
# chrome            Google.Chrome
# discord           Discord.Discord
# nvidia experience Nvidia.GeForceExperience
# mobaxterm
# flameshot || lightshot    Flameshot.Flameshot
# spotify       Spotify.Spotify
# whatsapp
# telegram  Telegram.TelegramDesktop

$lista_pacotes = @('Microsoft.VisualStudioCode', 'Notepad++.Notepad++', 'Oracle.VirtualBox', 'SlackTechnologies.Slack', 'Google.Chrome', 'Discord.Discord', 'Nvidia.GeForceExperience', 'Flameshot.Flameshot', 'Spotify.Spotify', 'Telegram.TelegramDesktop')
$x = 0

while ( $x -lt $lista_pacotes.Length) {
        
    Write-Host "Pacote:" $lista_pacotes[$x]
    winget install $lista_pacotes[$x]
    $x++
}
# winget install 
Read-Host "Finalizado. Pressione qualquer tecla para sair..."