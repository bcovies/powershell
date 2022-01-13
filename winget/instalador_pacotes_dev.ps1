Write-Host 'Iniciada a instalação de pacotes'
$x = 0
$lista_pacotes_instalar = @(
    'Microsoft.WindowsTerminal', 
    'Microsoft.VisualStudioCode', 
    'WinSCP.WinSCP',
    'Git.Git',
    'Notepad++.Notepad++', 
    'Oracle.VirtualBox', 
    'SlackTechnologies.Slack', 
    '7zip.7zip',
    'Mozilla.Firefox',
    'Google.Chrome')

while ( $x -lt $lista_pacotes_instalar.Length) {
    winget install $lista_pacotes_instalar[$x]
    Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
