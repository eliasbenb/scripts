# Request Admin
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        Exit
    }
}

# Uninstall Bloatware
[regex]$WhitelistedApps = "Microsoft.Paint3D|Microsoft.WindowsCalculator|Microsoft.WindowsStore|Microsoft.Windows.Photos|CanonicalGroupLimited.UbuntuonWindows|Microsoft.XboxGameCallableUI|Microsoft.XboxGamingOverlay|Microsoft.Xbox.TCUI|Microsoft.XboxGamingOverlay|Microsoft.XboxIdentityProvider|Microsoft.MSPaint|Microsoft.WindowsTerminal*"
Get-AppxPackage -AllUsers | Where-Object {$_.Name -NotMatch $WhitelistedApps} | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -NotMatch $WhitelistedApps} | Remove-AppxProvisionedPackage -Online

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
choco install equalizerapo -y
choco install littlebigmouse --version=4.2.7124.42685 -y
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

# Copy items from local '.\BACKUP' folder to the system drive (e.g. C:\ drive)
Copy-Item -Path .\BACKUP\* -Destination "$env:SystemDrive\" -Recurse -Force -PassThru -ErrorAction Continue

# Add Windows Terminal to context menu
pwsh -c "Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/lextm/windowsterminal-shell/master/install.ps1" | Invoke-Expression"
RefreshEnv.cmd
