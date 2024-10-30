Set-PSDebug -Trace 2

$scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Definition

$platforms = Get-Content -Raw "$scriptDirectory/platforms.json" | ConvertFrom-Json

foreach ($platform in $platforms) {
    dotnet build "$scriptDirectory/packaging/Corgibytes.SedateForest.native.csproj" -p:Configuration=Release -p:RuntimeIdentifier="$platform"
    dotnet pack "$scriptDirectory/packaging/Corgibytes.SedateForest.NativeLibrary.runtime.csproj" -p:RuntimeIdentifier="$platform"
}

dotnet pack "$scriptDirectory/packaging/Corgibytes.SedateForest.NativeLibrary.csproj"
