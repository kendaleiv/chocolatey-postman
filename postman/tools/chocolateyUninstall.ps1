$packageName = "postman"
$fileType = "exe"
$args = "--uninstall -s"
$filePath = "$env:APPDATA\..\Local\Postman\Update.exe"

Uninstall-ChocolateyPackage $packageName $fileType $args $filePath
