$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.35.1/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '07b5e2bf9c92c7094a8566d20943e01f100a795b131af8d3678e271d46bcd16a'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
