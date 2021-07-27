# powershell-windows-programs
Instalador de utilitário para windows 10 após a formatação do mesmo.

O chocolatey é apenas um "add-on" visto que, apenas o instalaremos, porém é uma boa ferramenta para desenvolvimento nativo no windows.
Para executar o instalador_chocolatey.ps1 é necessário habilitar a execução de scripts com: ```Set-ExecutionPolicy Bypass -Scope Process``` 

Para gerenciar pacotes, iremos utilizar o winget, que é uma ótima ferramenta na qual a microsoft vem desenvolvendo.
E está presente no seguinte link: https://github.com/microsoft/winget-cli


## Roadmap da aplicação:

    - Criar um entrypoint da aplicação para servir como um guia do usuário e um utilitário.
    - Criação de um verificador de pacotes para o windows como um todo. (Há aplicações que não aparecem com winget, como o mobaxterm e com isso não é possível desistalar pelo powershell)
    - Remoção do controle de usuário para instalação dos pacotes e adição no final da instalação
    - Habilitar features do windows, conhecidas no turn Windows features on or off, como: telnet, wsl, sandbox, Microsoft-Hyper-V, Containers
