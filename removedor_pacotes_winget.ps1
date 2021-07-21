Write-Host 'Iniciada a instalação de pacotes'

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
    Write-Host "Removendo pacote:" $lista_pacotes_remover[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
