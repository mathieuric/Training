$appDir = Join-Path $PSScriptRoot MyRazorWebApp
$appDir = New-Item -ItemType Directory -Path $appDir

Push-Location $appDir

try {
    dotnet new razor #MyRazorWebApp
}
finally {
    Pop-Location
}
