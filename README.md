# powershell-windows-programs
Instalador de utilitário para windows 10 após a formatação do mesmo.

O chocolatey é apenas um "add-on" visto que, apenas o instalaremos, porém é uma boa ferramenta para desenvolvimento nativo no windows.
Para executar o instalador_chocolatey.ps1 é necessário habilitar a execução de scripts com: ```Set-ExecutionPolicy Bypass -Scope Process``` 

Para gerenciar pacotes, iremos utilizar o winget, que é uma ótima ferramenta na qual a microsoft vem desenvolvendo.
E está presente no seguinte link: https://github.com/microsoft/winget-cli


## Pontos pendentes da aplicação:

    Melhoria no verificador de pacotes
    Remoção do controle de usuário para instalação dos pacotes e adição no final da instalação
    Habilitar features do windows, como: telnet, wsl, sandbox, Microsoft-Hyper-V, Containers