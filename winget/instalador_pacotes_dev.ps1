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
	'RubyInstallerTeam.Ruby',
	'GitHub.GitLFS',
	'GitHub.GitHubDesktop',
	'BraveSoftware.BraveBrowser',
    'Google.Chrome')

while ( $x -lt $lista_pacotes_instalar.Length) {
    winget install $lista_pacotes_instalar[$x]
    Write-Host "Instalado pacote:" $lista_pacotes_instalar[$x]
    $x++
}
curl.exe -L -o eclipse.zip "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2021-12/R/eclipse-jee-2021-12-R-win32-x86_64.zip&mirror_id=576"

Read-Host "Finalizado. Pressione qualquer tecla para sair..."
