$ErrorActionPreference = 'Stop'

$url64 = "https://github.com/kaytu-io/kaytu/releases/download/{PLACEHOLDER_VERSION}/kaytu-windows-amd64.zip"
$unzipLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageParams = @{
  PackageName   = 'kaytu'
  UnzipLocation = $unzipLocation
  Url64         = $url64
  Checksum64    = '{PLACEHOLDER_SHA}'
  ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams
