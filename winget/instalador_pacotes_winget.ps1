Write-Host 'Iniciada a instalação de pacotes'
$x = 0
$lista_pacotes_instalar = @(
    'Microsoft.WindowsTerminal', 
    'WhatsApp.WhatsApp', 
    'OBSProject.OBSStudio', 
    'Twitch.Twitch', 
    'Microsoft.VisualStudioCode', 
    'Notepad++.Notepad++', 
    'Oracle.VirtualBox', 
    'SlackTechnologies.Slack', 
    'Google.Chrome', 
    'Discord.Discord',
    'Nvidia.GeForceExperience', 
    'Flameshot.Flameshot',
    'Spotify.Spotify',
    'Telegram.TelegramDesktop',
    'Mozilla.Firefox',
    '7zip.7zip',
    'WinSCP.WinSCP',
    'PuTTY.PuTTY',
    'GIMP.GIMP')

while ( $x -lt $lista_pacotes_instalar.Length) {
    winget install $lista_pacotes_instalar[$x]
    Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
