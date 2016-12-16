$packageName = "postman"
$fileType = "exe"
$silentArgs = "-s"
$url = "https://dl.pstmn.io/download/latest/win32"
$url64 = "https://dl.pstmn.io/download/latest/win64"

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64
