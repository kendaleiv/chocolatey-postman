$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://dl.pstmn.io/download/version/12.35.2/win64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  silentArgs    = "-s"
  url64bit      = $url64
  checksum64    = '801001c37fb968c7d028772076682cdd30f66feba7876ef16148e795494bcdae'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
