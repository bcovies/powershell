Write-Host 'Iniciada a instalação de pacotes'
while ( $x -lt $lista_pacotes.Length) {
    winget install $lista_pacotes[$x]
    Write-Host "Instalado pacote:" $lista_pacotes[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."