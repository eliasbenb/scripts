<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    EzCommands
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$mainWinForm                     = New-Object system.Windows.Forms.Form
$mainWinForm.ClientSize          = New-Object System.Drawing.Point(600,200)
$mainWinForm.text                = "EzCommands @eliasbenb"
$mainWinForm.TopMost             = $false

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Set execution policy to `'Unrestricted`'"
$Button1.width                   = 150
$Button1.height                  = 100
$Button1.location                = New-Object System.Drawing.Point(0,0)
$Button1.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Uninstall Windows Store apps"
$Button2.width                   = 150
$Button2.height                  = 100
$Button2.location                = New-Object System.Drawing.Point(150,0)
$Button2.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Uninstall OneDrive"
$Button3.width                   = 150
$Button3.height                  = 100
$Button3.location                = New-Object System.Drawing.Point(300,0)
$Button3.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Install VS Code Extentions"
$Button4.width                   = 150
$Button4.height                  = 100
$Button4.location                = New-Object System.Drawing.Point(450,0)
$Button4.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Install latest NodeJS"
$Button5.width                   = 150
$Button5.height                  = 100
$Button5.location                = New-Object System.Drawing.Point(0,100)
$Button5.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Install Spicetify"
$Button6.width                   = 150
$Button6.height                  = 100
$Button6.location                = New-Object System.Drawing.Point(150,100)
$Button6.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button7                         = New-Object system.Windows.Forms.Button
$Button7.text                    = "Install Folder of Registries"
$Button7.width                   = 150
$Button7.height                  = 100
$Button7.location                = New-Object System.Drawing.Point(300,100)
$Button7.Font                    = New-Object System.Drawing.Font('Consolas',10)

$Button8                         = New-Object system.Windows.Forms.Button
$Button8.text                    = "Create a System Restore Point"
$Button8.width                   = 150
$Button8.height                  = 100
$Button8.location                = New-Object System.Drawing.Point(450,100)
$Button8.Font                    = New-Object System.Drawing.Font('Consolas',10)

$mainWinForm.controls.AddRange(@($Button1,$Button2,$Button3,$Button4,$Button5,$Button6,$Button7,$Button8))

$Button1.Add_Click({ handleButton1Click })
$Button2.Add_Click({ handleButton2Click })
$Button3.Add_Click({ handleButton3Click })
$Button4.Add_Click({ handleButton4Click })
$Button5.Add_Click({ handleButton5Click })
$Button6.Add_Click({ handleButton6Click })
$Button7.Add_Click({ handleButton7Click })
$Button8.Add_Click({ handleButton8Click })

#Requires -RunAsAdministrator

$mainWinForm.FormBorderStyle = "Fixed3D"
$mainWinForm.MaximizeBox = $False
$mainWinForm.MinimizeBox = $True

function handleButton1Click {
    try {
        Set-ExecutionPolicy -ExecutionPolicy Unrestricted
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton2Click {
    try {
        foreach ($item in (Get-AppxPackage | Select-Object PackageFullName).PackageFullName) {
            Get-AppxPackage -allusers $item | Remove-AppxPackage
        }
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton3Click {
    try {
        taskkill.exe /f /im OneDrive.exe
        %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton4Click {
    try {
        $openFileDialog = New-Object windows.forms.openfiledialog
        $openFileDialog.initialDirectory = [System.IO.Directory]::GetCurrentDirectory()
        $openFileDialog.title = "Select the .txt file with a list of all VS code extentions"
        $openFileDialog.filter = "Text file (*.txt)| *.txt"
        $result = $openFileDialog.ShowDialog()
        $result
        if ($result -eq "OK") {
            $fileName = $OpenFileDialog.filename
            Get-Content $fileName | ForEach-Object { code --install-extension $_ }
        }
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton5Click {
    try {
        nvm.exe install latest
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton6Click {
    try {
        Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.ps1" | Invoke-Expression
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton7Click {
    try {
        $openFolderBrowserDialog = New-Object Windows.Forms.FolderBrowserDialog   
        $result = $openFolderBrowserDialog.ShowDialog()
        if ($result -eq "OK") {
            $folderPath = $openFolderBrowserDialog.SelectedPath
            foreach ($registry in (Get-ChildItem -Path $folderPath *.reg)) {
                reg.exe import $file
            }
            [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
        }
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

function handleButton8Click {
    try {
        Checkpoint-Computer -Description (Get-Date).tostring("yyyyMMdd-hhmmss") -RestorePointType "MODIFY_SETTINGS"
        [System.Windows.Forms.MessageBox]::Show("EzCommands has executed the task successfully!", "Task completed!")
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("EzCommands encountered an error!", "Task failed!")
    }
}

[void]$mainWinForm.ShowDialog()