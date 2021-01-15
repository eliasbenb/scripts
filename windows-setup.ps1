# Request Admin
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        Exit
    }
}

# Install Chocolatey
Invoke-WebRequest -UseBasicParsing "https://chocolatey.org/install.ps1" | Invoke-Expression
RefreshEnv.cmd

# Install Chocolatey Packages
choco install chocolateygui -y
choco install googlechrome -y
choco install powershell-core -y
choco install googlechrome -y
choco install notepadplusplus -y
choco install python3 -y
choco install nvm -y
choco install vscode -y
choco install git -y --params "/NoShellIntegration"
choco install discord -y
choco install potplayer -y
choco install expressvpn -y
choco install github-desktop -y
choco install razer-synapse-2 -y
choco install microsoft-windows-terminal -y
choco install spotify -y
choco install spicetify-cli -y
choco install rclone -y
choco install winfsp -y
RefreshEnv.cmd

# Install latest NVM
nvm install latest
RefreshEnv.cmd

# Install latest Little Big Mouse
$path = "$env:temp\LittleBigMouseSetup.exe"
$url = "https://api.github.com/repos/mgth/LittleBigMouse/releases"
$response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
$url = ($response[0].assets | Where-Object Name -Like "LittleBigMouse_*.exe" | Select-Object -first 1 * ).browser_download_url
Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
Start-Process -FilePath $path -ArgumentList "/VERYSILENT"

# Copy items from local '.\BACKUP' folder to the system drive (e.g. C:\ drive)
Copy-Item -Path .\BACKUP\* -Destination "$env:SystemDrive\" -Recurse -Force -PassThru -ErrorAction Continue

# Add Windows Terminal to context menu
pwsh -c "Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/lextm/windowsterminal-shell/master/install.ps1" | Invoke-Expression"
RefreshEnv.cmd
