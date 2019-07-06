$packageName= 'postman'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.pstmn.io/download/version/7.2.2/windows32'
$url64      = 'https://dl.pstmn.io/download/version/7.2.2/windows64'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = '2CAD97FE16ED320E88CAA6AD74CE4D12639C6678B6CEF6EF3052112566476EF0'
  checksumType  = 'sha256'
  checksum64    = 'F826A2DBF4EDCAE19F165B780F43625236B4C87C9AE4AB53BAAB49EE1B2AD165'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
