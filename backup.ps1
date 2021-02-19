$type = ""
while (($type -ne "b") -and ($type -ne "r")) {
    $type = (Read-Host "Backup or Restore? (b/r)").ToLower()
}

New-Item -ItemType directory -Path "$PSScriptRoot\BACKUP"

if ($type -eq "b") {
    foreach ($path in Get-Content .\paths.txt) {
        Set-Location "$PSScriptRoot\BACKUP"
        $newPath = $path.substring(3) 
        Robocopy.exe $path ".\$newPath" /E
    }
} elseif ($type -eq "r") {
    Set-Location "$PSScriptRoot"
    Robocopy.exe "./BACKUP" $env:SystemDrive /E
}

Set-Location "$PSScriptRoot"
