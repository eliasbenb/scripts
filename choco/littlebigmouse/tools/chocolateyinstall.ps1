$ErrorActionPreference = "Stop";
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = "exe"
  url            = "https://github.com/mgth/LittleBigMouse/releases/download/4.2.7124.42685/LittleBigMouse_4.2.7124.42685.exe"
  softwareName   = "Little Big Mouse*"
  checksum       = "5760B36B506DE39CBF8855F3947C57BD742175FED7560023E5D42639CE280D8A"
  checksumType   = "sha256"
  silentArgs     = "/VERYSILENT"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
