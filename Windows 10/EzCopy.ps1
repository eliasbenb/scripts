<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    EzCopy
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$mainWinForm                     = New-Object system.Windows.Forms.Form
$mainWinForm.ClientSize          = New-Object System.Drawing.Point(600,400)
$mainWinForm.text                = "EzCopy @eliasbenb"
$mainWinForm.TopMost             = $false

$pathsListView                   = New-Object system.Windows.Forms.ListView
$pathsListView.text              = "listView"
$pathsListView.width             = 540
$pathsListView.height            = 280
$pathsListView.location          = New-Object System.Drawing.Point(32,48)

$pathInputBox                    = New-Object system.Windows.Forms.TextBox
$pathInputBox.multiline          = $false
$pathInputBox.width              = 460
$pathInputBox.height             = 20
$pathInputBox.location           = New-Object System.Drawing.Point(30,18)
$pathInputBox.Font               = New-Object System.Drawing.Font('Consolas',10)

$sourceButton                    = New-Object system.Windows.Forms.Button
$sourceButton.text               = "Add Source"
$sourceButton.width              = 100
$sourceButton.height             = 25
$sourceButton.location           = New-Object System.Drawing.Point(248,350)
$sourceButton.Font               = New-Object System.Drawing.Font('Consolas',10)

$browseButton                    = New-Object system.Windows.Forms.Button
$browseButton.text               = "Browse"
$browseButton.width              = 60
$browseButton.height             = 25
$browseButton.location           = New-Object System.Drawing.Point(510,17)
$browseButton.Font               = New-Object System.Drawing.Font('Consolas',10)

$importButton                    = New-Object system.Windows.Forms.Button
$importButton.text               = "Import"
$importButton.width              = 60
$importButton.height             = 20
$importButton.location           = New-Object System.Drawing.Point(120,352)
$importButton.Font               = New-Object System.Drawing.Font('Consolas',8)

$exportButton                    = New-Object system.Windows.Forms.Button
$exportButton.text               = "Export"
$exportButton.width              = 60
$exportButton.height             = 20
$exportButton.location           = New-Object System.Drawing.Point(420,352)
$exportButton.Font               = New-Object System.Drawing.Font('Consolas',8)

$importCopyButton                = New-Object system.Windows.Forms.Button
$importCopyButton.text           = "Copy"
$importCopyButton.width          = 60
$importCopyButton.height         = 20
$importCopyButton.location       = New-Object System.Drawing.Point(30,352)
$importCopyButton.Font           = New-Object System.Drawing.Font('Consolas',8)

$exportCopyButton                = New-Object system.Windows.Forms.Button
$exportCopyButton.text           = "Copy"
$exportCopyButton.width          = 60
$exportCopyButton.height         = 20
$exportCopyButton.location       = New-Object System.Drawing.Point(508,352)
$exportCopyButton.Font           = New-Object System.Drawing.Font('Consolas',8)

$mainWinForm.controls.AddRange(@($pathsListView,$pathInputBox,$sourceButton,$browseButton,$importButton,$exportButton,$importCopyButton,$exportCopyButton))

$sourceButton.Add_Click({ handleSourceButtonClick })
$pathInputBox.Add_TextChanged({ handlePathInputBoxTextChanged })
$browseButton.Add_Click({ handleBrowseButtonClick })
$importButton.Add_Click({ handleImportButtonClick })
$exportButton.Add_Click({ handleExportButtonClick })
$importCopyButton.Add_Click({ handleImportCopyButtonClick })
$exportCopyButton.Add_Click({ handleExportCopyButtonClick })

#Requires -RunAsAdministrator

$mainWinForm.FormBorderStyle = "Fixed3D"
$mainWinForm.MaximizeBox = $False
$mainWinForm.MinimizeBox = $True

$pathsListView.View = "Details"
$pathsListView.GridLines = $True
$pathsListView.FullRowSelect = $True
$pathsListView.Font = New-Object System.Drawing.Font("Consolas", 10)
$pathsListView.Columns.Add("", 20)
$pathsListView.Columns.Add("Source", 265)
$pathsListView.Columns.Add("Destination", 265)

$pathInputBox.Text = "Destination Path..."

$exportCopyButton.Visible = $False
$importCopyButton.Visible = $False

function handleImportButtonClick {
    $openFileDialog = New-Object windows.forms.openfiledialog
    $openFileDialog.initialDirectory = [System.IO.Directory]::GetCurrentDirectory()
    $openFileDialog.title = "Select the .BAK file you want to import"
    $openFileDialog.filter = "BAK file (*.BAK)| *.BAK"
    $result = $openFileDialog.ShowDialog()
    $result
    if ($result -eq "OK") {
        $fileName = $OpenFileDialog.filename
        $pathsListView.Clear()
        $pathsListView.Columns.Add("", 20)
        $pathsListView.Columns.Add("Source", 265)
        $pathsListView.Columns.Add("Destination", 265)
        $rowArr = @()
        foreach ($item in Get-Content $fileName) {
            if ($item -eq "") {
                $newListViewItem = New-Object System.Windows.Forms.ListViewItem(([int]$rowArr[0]) + 1)
                $newListViewItem.Font = New-Object System.Drawing.Font("Consolas", 10)
                $newListViewItem.SubItems.Add([string]$rowArr[1])
                $newListViewItem.SubItems.Add([string]$rowArr[2])
                $pathsListView.Items.Add($newListViewItem)
                $rowArr = @()
            }
            else {
                $rowArr += $item
            }
        }
        $importCopyButton.Visible = $True
        [System.Windows.Forms.MessageBox]::Show("The .BAK file was imported successfully`n`n A new 'copy' button will appear, clicking it will copy the selected folders from the backup location to the original source directory", "Important!")
    }
}

function handleExportButtonClick {
    $fileName = (Get-Date).tostring("yyyyMMdd-hhmmss") + ".BAK"
    New-Item -itemType File -Path .\ -Name ($fileName)
    foreach ($item in $pathsListView.Items) {
        foreach ($subItem in $item.SubItems) {
            Add-Content $fileName $subItem.Text
        }
        Add-Content $fileName ""
    }
    $exportCopyButton.Visible = $True
    [System.Windows.Forms.MessageBox]::Show("The .BAK file was exported successfully to: $(Get-Location)\$fileName `n`n A new 'copy' button will appear, clicking it will copy the selected folders to the backup location", "Important!")

}
function handleExportCopyButtonClick {
    $counter = 0
    foreach ($path in $pathsListView.Items) {
        $source = $pathsListView.Items[$counter].Subitems[1].Text
        $destination = $pathsListView.Items[$counter].Subitems[2].Text

        robocopy $source $destination /e
        $counter += 1
    }
}
function handleImportCopyButtonClick {
    $counter = 0
    foreach ($path in $pathsListView.Items) {
        $source = $pathsListView.Items[$counter].Subitems[2].Text
        $destination = $pathsListView.Items[$counter].Subitems[1].Text

        robocopy $source $destination /e
        $counter += 1
    }
}

function handlePathInputBoxTextChanged {
    $pathInput = $pathInputBox.Text
    $counter = 0
    foreach ($ListRow in $pathsListView.Items) {
        $leafFolderPath = "$($pathInput)\$(Split-Path $pathsListView.Items[$counter].Subitems[1].Text -Leaf)"
        $pathsListView.Items[$counter].Subitems[2].Text = $leafFolderPath
        $counter += 1
    }
}

function handleSourceButtonClick {
    $openFolderBrowserDialog = New-Object Windows.Forms.FolderBrowserDialog   
    $result = $openFolderBrowserDialog.ShowDialog()

    if ($result -eq "OK") {
        $folderPath = $openFolderBrowserDialog.SelectedPath
        $leafFolderPath = "$([string]$pathInputBox.Text)\$(Split-Path $folderPath -Leaf)"
        $newListViewItem = New-Object System.Windows.Forms.ListViewItem($pathsListView.Items.Count)
        $newListViewItem.Font = New-Object System.Drawing.Font("Consolas", 10)
        $newListViewItem.SubItems.Add($folderPath)
        $newListViewItem.SubItems.Add($leafFolderPath)
        $pathsListView.Items.Add($newListViewItem)
    }
}

function handleBrowseButtonClick {
    $openFolderBrowserDialog = New-Object Windows.Forms.FolderBrowserDialog   
    $result = $openFolderBrowserDialog.ShowDialog()

    if ($result -eq "OK") {
        $folderPath = $openFolderBrowserDialog.SelectedPath
        $pathInputBox.Text = $folderPath
    }
}

[void]$mainWinForm.ShowDialog()