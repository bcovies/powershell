#alterar_tema.ps1
$caminhoPersonalizacaoTema = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$nomePersonalizacaoTema = "AppsUseLightTheme"
#instalador_chocolatey.ps1
$instaladorAdministrativo = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
$ehAdministrador = $instaladorAdministrativo.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
#instalador_pacotes_winget
$lista_pacotes = @('Microsoft.WindowsTerminal', 'WhatsApp.WhatsApp', 'OBSProject.OBSStudio', 'Twitch.Twitch', 'Microsoft.VisualStudioCode', 'Notepad++.Notepad++', 'Oracle.VirtualBox', 'SlackTechnologies.Slack', 'Google.Chrome', 'Discord.Discord', 'Nvidia.GeForceExperience', 'Flameshot.Flameshot', 'Spotify.Spotify', 'Telegram.TelegramDesktop')
$x = 0
