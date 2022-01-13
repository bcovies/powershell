Write-Host 'Iniciada a instalação de pacotes'
$x = 0
$lista_pacotes_instalar = @(
    'Flameshot.Flameshot',
    'WhatsApp.WhatsApp', 
    'Discord.Discord',
    'Telegram.TelegramDesktop',
    'Spotify.Spotify',
    'qBittorrent.qBittorrent')

while ( $x -lt $lista_pacotes_instalar.Length) {
    winget install $lista_pacotes_instalar[$x]
    Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
