Write-Host 'Iniciada a instalação de pacotes'
$x = 0
$lista_pacotes_instalar = @(
    'Microsoft.WindowsTerminal', 
    'Microsoft.VisualStudioCode', 
    'WinSCP.WinSCP',
    'Git.Git',
    'Notepad++.Notepad++', 
    'Oracle.VirtualBox', 
    '7zip.7zip',
    'Microsoft.PowerShell',
    'Canonical.Ubuntu',
    'GitHub.Atom',
    'Debian.Debian',
    'Hashicorp.Vagrant',
    'Amazon.AWSCLI',
    'OpenJS.NodeJS',
	'Oracle.JDK.17',
	'Oracle.JavaRuntimeEnvironment',
    'Mozilla.Firefox',
	'Docker.DockerDesktop',
	'RedHat.Podman',
	'Kubernetes.minikube',
	'Python.Python.3',
	'Python.Python.2',
	'GoLang.Go',
	'GitHub.GitLFS',
	'GitHub.GitHubDesktop',
	'BraveSoftware.BraveBrowser',
    'Google.Chrome')

while ( $x -lt $lista_pacotes_instalar.Length) {
    winget install $lista_pacotes_instalar[$x]
    Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
    $x++
}
Read-Host "Finalizado. Pressione qualquer tecla para sair..."
