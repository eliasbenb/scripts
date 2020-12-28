<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    EzSoftware
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$mainWinForm = New-Object system.Windows.Forms.Form
$mainWinForm.ClientSize = New-Object System.Drawing.Point(600, 400)
$mainWinForm.text = "EzSoftware @eliasbenb"
$mainWinForm.TopMost = $false

$softwareGroupBox = New-Object system.Windows.Forms.Groupbox
$softwareGroupBox.height = 230
$softwareGroupBox.width = 500
$softwareGroupBox.location = New-Object System.Drawing.Point(50, 75)

$CheckBox1 = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text = "7zip"
$CheckBox1.AutoSize = $false
$CheckBox1.width = 140
$CheckBox1.height = 20
$CheckBox1.location = New-Object System.Drawing.Point(20, 20)
$CheckBox1.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox2 = New-Object system.Windows.Forms.CheckBox
$CheckBox2.text = "Chrome"
$CheckBox2.AutoSize = $false
$CheckBox2.width = 140
$CheckBox2.height = 20
$CheckBox2.location = New-Object System.Drawing.Point(180, 20)
$CheckBox2.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox3 = New-Object system.Windows.Forms.CheckBox
$CheckBox3.text = "Discord"
$CheckBox3.AutoSize = $false
$CheckBox3.width = 140
$CheckBox3.height = 20
$CheckBox3.location = New-Object System.Drawing.Point(340, 20)
$CheckBox3.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox6 = New-Object system.Windows.Forms.CheckBox
$CheckBox6.text = "Git"
$CheckBox6.AutoSize = $false
$CheckBox6.width = 140
$CheckBox6.height = 20
$CheckBox6.location = New-Object System.Drawing.Point(340, 50)
$CheckBox6.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox5 = New-Object system.Windows.Forms.CheckBox
$CheckBox5.text = "Firefox"
$CheckBox5.AutoSize = $false
$CheckBox5.width = 140
$CheckBox5.height = 20
$CheckBox5.location = New-Object System.Drawing.Point(180, 50)
$CheckBox5.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox4 = New-Object system.Windows.Forms.CheckBox
$CheckBox4.text = "Equalizer APO"
$CheckBox4.AutoSize = $false
$CheckBox4.width = 140
$CheckBox4.height = 20
$CheckBox4.location = New-Object System.Drawing.Point(20, 50)
$CheckBox4.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox10 = New-Object system.Windows.Forms.CheckBox
$CheckBox10.text = "NVM"
$CheckBox10.AutoSize = $false
$CheckBox10.width = 140
$CheckBox10.height = 20
$CheckBox10.location = New-Object System.Drawing.Point(20, 110)
$CheckBox10.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox9 = New-Object system.Windows.Forms.CheckBox
$CheckBox9.text = "LittleBigMouse"
$CheckBox9.AutoSize = $false
$CheckBox9.width = 140
$CheckBox9.height = 20
$CheckBox9.location = New-Object System.Drawing.Point(340, 80)
$CheckBox9.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox7 = New-Object system.Windows.Forms.CheckBox
$CheckBox7.text = "GitHub Desktop"
$CheckBox7.AutoSize = $false
$CheckBox7.width = 140
$CheckBox7.height = 20
$CheckBox7.location = New-Object System.Drawing.Point(20, 80)
$CheckBox7.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox18 = New-Object system.Windows.Forms.CheckBox
$CheckBox18.text = "VLC"
$CheckBox18.AutoSize = $false
$CheckBox18.width = 140
$CheckBox18.height = 20
$CheckBox18.location = New-Object System.Drawing.Point(340, 170)
$CheckBox18.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox12 = New-Object system.Windows.Forms.CheckBox
$CheckBox12.text = "PotPlayer"
$CheckBox12.AutoSize = $false
$CheckBox12.width = 140
$CheckBox12.height = 20
$CheckBox12.location = New-Object System.Drawing.Point(340, 110)
$CheckBox12.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox11 = New-Object system.Windows.Forms.CheckBox
$CheckBox11.text = "Notepad++"
$CheckBox11.AutoSize = $false
$CheckBox11.width = 140
$CheckBox11.height = 20
$CheckBox11.location = New-Object System.Drawing.Point(180, 110)
$CheckBox11.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox14 = New-Object system.Windows.Forms.CheckBox
$CheckBox14.text = "Razer Synapse 2"
$CheckBox14.AutoSize = $false
$CheckBox14.width = 140
$CheckBox14.height = 20
$CheckBox14.location = New-Object System.Drawing.Point(180, 140)
$CheckBox14.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox15 = New-Object system.Windows.Forms.CheckBox
$CheckBox15.text = "Razer Synapse 3"
$CheckBox15.AutoSize = $false
$CheckBox15.width = 140
$CheckBox15.height = 20
$CheckBox15.location = New-Object System.Drawing.Point(340, 140)
$CheckBox15.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox17 = New-Object system.Windows.Forms.CheckBox
$CheckBox17.text = "Spotify"
$CheckBox17.AutoSize = $false
$CheckBox17.width = 140
$CheckBox17.height = 20
$CheckBox17.location = New-Object System.Drawing.Point(180, 170)
$CheckBox17.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox19 = New-Object system.Windows.Forms.CheckBox
$CheckBox19.text = "VS Code"
$CheckBox19.AutoSize = $false
$CheckBox19.width = 140
$CheckBox19.height = 20
$CheckBox19.location = New-Object System.Drawing.Point(20, 200)
$CheckBox19.Font = New-Object System.Drawing.Font('Consolas', 10)

$titleLabel = New-Object system.Windows.Forms.Label
$titleLabel.text = "Select Software to Install"
$titleLabel.AutoSize = $true
$titleLabel.width = 415
$titleLabel.height = 22
$titleLabel.location = New-Object System.Drawing.Point(90, 20)
$titleLabel.Font = New-Object System.Drawing.Font('Consolas', 22, [System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$goButton = New-Object system.Windows.Forms.Button
$goButton.text = "Go!"
$goButton.width = 80
$goButton.height = 30
$goButton.location = New-Object System.Drawing.Point(260, 335)
$goButton.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox16 = New-Object system.Windows.Forms.CheckBox
$CheckBox16.text = "Rclone"
$CheckBox16.AutoSize = $false
$CheckBox16.width = 140
$CheckBox16.height = 20
$CheckBox16.location = New-Object System.Drawing.Point(20, 170)
$CheckBox16.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox20 = New-Object system.Windows.Forms.CheckBox
$CheckBox20.text = "WinFsp"
$CheckBox20.AutoSize = $false
$CheckBox20.width = 140
$CheckBox20.height = 20
$CheckBox20.location = New-Object System.Drawing.Point(180, 200)
$CheckBox20.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox8 = New-Object system.Windows.Forms.CheckBox
$CheckBox8.text = "Java JRE"
$CheckBox8.AutoSize = $false
$CheckBox8.width = 140
$CheckBox8.height = 20
$CheckBox8.location = New-Object System.Drawing.Point(180, 80)
$CheckBox8.Font = New-Object System.Drawing.Font('Consolas', 10)

$CheckBox13 = New-Object system.Windows.Forms.CheckBox
$CheckBox13.text = "Python"
$CheckBox13.AutoSize = $false
$CheckBox13.width = 140
$CheckBox13.height = 20
$CheckBox13.location = New-Object System.Drawing.Point(20, 140)
$CheckBox13.Font = New-Object System.Drawing.Font('Consolas', 10)

$mainWinForm.controls.AddRange(@($softwareGroupBox, $titleLabel, $goButton))
$softwareGroupBox.controls.AddRange(@($CheckBox1, $CheckBox2, $CheckBox3, $CheckBox6, $CheckBox5, $CheckBox4, $CheckBox10, $CheckBox9, $CheckBox7, $CheckBox18, $CheckBox12, $CheckBox11, $CheckBox14, $CheckBox15, $CheckBox17, $CheckBox19, $CheckBox16, $CheckBox20, $CheckBox8, $CheckBox13))

$goButton.Add_Click( { handleGoButtonClick })

#Requires -RunAsAdministrator

$mainWinForm.FormBorderStyle = "Fixed3D"
$mainWinForm.MaximizeBox = $False
$mainWinForm.MinimizeBox = $True

function handleGoButtonClick {
    if ($CheckBox1.Checked) {
        7zip
    }
    if ($CheckBox2.Checked) {
        Chrome
    }
    if ($CheckBox3.Checked) {
        Discord
    }
    if ($CheckBox4.Checked) {
        EqualizerAPO
    }
    if ($CheckBox5.Checked) {
        Firefox
    }
    if ($CheckBox6.Checked) {
        Git
    }
    if ($CheckBox7.Checked) {
        GitHubDestkop
    }
    if ($CheckBox8.Checked) {
        JavaJRE
    }
    if ($CheckBox9.Checked) {
        LittleBigMouse
    }
    if ($CheckBox10.Checked) {
        NVM
    }
    if ($CheckBox11.Checked) {
        NotepadPlusPlus
    }
    if ($CheckBox12.Checked) {
        PotPlayer
    }
    if ($CheckBox13.Checked) {
        Python
    }
    if ($CheckBox14.Checked) {
        RazerSynapse2
    }
    if ($CheckBox15.Checked) {
        RazerSynapse3
    }
    if ($CheckBox16.Checked) {
        Rclone
    }
    if ($CheckBox17.Checked) {
        Spotify
    }
    if ($CheckBox18.Checked) {
        VLC
    }
    if ($CheckBox19.Checked) {
        VSCode
    }
    if ($CheckBox20.Checked) {
        WinFsp
    }
    [System.Windows.Forms.MessageBox]::Show("EzSoftware has finished installing!`n`nSome programs may need manual installation.", "Task completed!")
}

function 7zip {
    try {
        $path = "$env:temp\7zipSetup.exe"
        $url = "https://sourceforge.net/projects/sevenzip/files/latest/download"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n7zip failed to install.", "Task failed!")
    }
}

function Chrome {
    try {
        $path = "$env:temp\ChromeSetup.exe"
        $url = "http://dl.google.com/chrome/install/375.126/chrome_installer.exe"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/silent /install" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Chrome failed to install.", "Task failed!")
    }
}

function Discord {
    try {
        $path = "$env:temp\DiscordSetup.exe"
        $url = "https://discord.com/api/download?platform=win"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S"
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Discord failed to install.", "Task failed!")
    }
}

function EqualizerAPO {
    try {
        $path = "$env:temp\EqualizerAPOSetup.exe"
        $url = "https://sourceforge.net/projects/equalizerapo/files/latest/download"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Equalizer APO failed to install.", "Task failed!")
    }
}

function Firefox {
    try {
        $path = "$env:temp\FirefoxSetup.exe"
        $url = "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Firefox failed to install.", "Task failed!")
    }
}

function Git {
    try {
        $path = "$env:temp\GitSetup.exe"
        $url = "https://git-scm.com/download/win"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        $url = ($response.links | Where-Object outerHTML -Match "git-.*-64-bit.exe" | Select-Object -first 1 * ).href
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/VERYSILENT" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Git failed to install.", "Task failed!")
    }
}

function GitHubDestkop {
    try {
        $path = "$env:temp\GitHubDestkopSetup.exe"
        $url = "https://central.github.com/deployments/desktop/desktop/latest/win32"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S"
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`GitHub Desktop failed to install.", "Task failed!")
    }
}
function JavaJRE {
    try {
        $path = "$env:temp\JavaJRESetup.exe"
        $url = "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=243737_61ae65e088624f5aaa0b1d2d801acb16"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/s REBOOT=0 SPONSORS=0 AUTO_UPDATE=0" -Wait
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Java JRE failed to install.", "Task failed!")
    }
}

function LittleBigMouse {
    try {
        $path = "$env:temp\LittleBigMouseSetup.exe"
        $url = "https://api.github.com/repos/mgth/LittleBigMouse/releases"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
        $url = ($response.assets | Where-Object Name -Match "LittleBigMouse_*.exe" | Select-Object -first 1 * ).browser_download_url
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/VERYSILENT" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`LittleBigMouse failed to install.", "Task failed!")
    }
}

function NVM {
    try {
        $zip_path = "$env:temp\NVMSetup.zip"
        $unzip_path = "$env:temp\NVMSetup"
        $url = "https://api.github.com/repos/coreybutler/nvm-windows/releases/latest"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
        $url = ($response.assets | Where-Object Name -Match "nvm-setup.zip" | Select-Object -first 1 * ).browser_download_url
        Invoke-WebRequest -Uri $url -OutFile $zip_path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Expand-Archive -Path $zip_path -DestinationPath $unzip_path -Force
        $file_path = Join-Path -Path $unzip_path -ChildPath (Get-ChildItem -Path $unzip_path *.exe)[0]
        Start-Process -FilePath $file_path -ArgumentList "/VERYSILENT" -Wait
        Remove-Item -Path $zip_path
        Remove-Item -Path $unzip_path -Recurse
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`NVM failed to install.", "Task failed!")
    }
}

function NotepadPlusPlus {
    try {
        $path = "$env:temp\NotepadPlusPlusSetup.exe"
        $url = "https://api.github.com/repos/notepad-plus-plus/notepad-plus-plus/releases/latest"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
        $url = ($response.assets | Where-Object Name -Match "npp.*.Installer.x64.exe" | Select-Object -first 1 * ).browser_download_url
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Notepad++ failed to install.", "Task failed!")
    }
}

function PotPlayer {
    try {
        $path = "$env:temp\PotPlayerSetup.exe"
        $url = "https://t1.daumcdn.net/potplayer/PotPlayer/Version/Latest/PotPlayerSetup64.exe"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`PotPlayer failed to install.", "Task failed!")
    }
}

function Python {
    try {
        $path = "$env:temp\PythonSetup.exe"
        $url = "https://www.python.org/ftp/python/"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        $url += $response.links.href[$response.links.href.length - 24]
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        $url += ($response.links | Where-Object outerHTML -Match 'python.*amd64.exe' | Select-Object -first 1 * ).href
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/quiet" -Wait
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Python failed to install.", "Task failed!")
    }
}

function RazerSynapse2 {
    try {
        $path = "$env:temp\RazerSynapse2Setup.exe"
        $url = "http://rzr.to/synapse-pc-download"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Razer Synapse 2 failed to install.", "Task failed!")
    }
}

function RazerSynapse3 {
    try {
        $path = "$env:temp\RazerSynapse3Setup.exe"
        $url = "http://rzr.to/synapse-3-pc-download"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Razer Synapse 3 failed to install.", "Task failed!")
    }
}

function Rclone {
    try {
        $zip_path = "$env:temp\RcloneSetup.zip"
        $unzip_path = "$env:ProgramFiles\Rclone2"
        $url = "https://api.github.com/repos/rclone/rclone/releases/latest"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
        $url = ($response.assets | Where-Object Name -Match "rclone-*-windows-amd64.zip" | Select-Object -first 1 * ).browser_download_url
        Invoke-WebRequest -Uri $url -OutFile $zip_path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Expand-Archive -Path $zip_path -DestinationPath $unzip_path -Force
        $env:Path += ";$unzip_path"
        Remove-Item -Path $zip_path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Rclone failed to install.", "Task failed!")
    }
}

function Spotify {
    try {
        $path = "$env:temp\SpotifySetup.exe"
        $url = "https://download.scdn.co/SpotifySetup.exe"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`Spotify failed to install.", "Task failed!")
    }
}

function VLC {
    try {
        $path = "$env:temp\VLCSetup.exe"
        $url = "https://www.videolan.org/vlc"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        $url = "https:$(($response.links | Where-Object outerHTML -Match "vlc-.*-win64.exe" | Select-Object -first 1 * ).href)"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`VLC failed to install.", "Task failed!")
    }
}

function VSCode {
    try {
        $path = "$env:temp\VSCodeSetup.exe"
        $url = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/VERYSILENT /MERGETASKS=!runcode" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`VS Code failed to install.", "Task failed!")
    }
}

function WinFsp {
    try {
        $path = "$env:temp\WinFspSetup.msi"
        $url = "https://api.github.com/repos/billziss-gh/winfsp/releases/latest"
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome | ConvertFrom-Json
        $url = ($response.assets | Where-Object Name -Match "winfsp-*.msi" | Select-Object -first 1 * ).browser_download_url
        Invoke-WebRequest -Uri $url -OutFile $path -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::Chrome
        Start-Process -FilePath $path -ArgumentList "/quiet" -Wait
        Remove-Item -Path $path
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzSoftware encountered an error!`n`n`WinFsp failed to install.", "Task failed!")
    }
}

[void]$mainWinForm.ShowDialog()