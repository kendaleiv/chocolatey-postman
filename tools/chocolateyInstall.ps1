$packageName = "postman"
$fileType = "exe"
$silentArgs = "-s"
$url = "https://dl.pstmn.io/download/version/6.5.2/windows32"
$url64 = "https://dl.pstmn.io/download/version/6.5.2/windows64"

$packageArgs = @{
  packageName   = $packageName
  fileType      = "exe"
  url           = $url
  url64bit      = $url64
  silentArgs    = "-s"
  checksum      = 'E210ECE30C21205486E0328F52C20E7A932C0D7CBFA8642022602A4C9F597F62'
  checksumType  = 'sha256'
  checksum64    = '0FD841E28B6E1F9183155B54CA70C81E108436871F98CE5834794DD4B8B042C2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
