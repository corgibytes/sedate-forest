Set-PSDebug -Trace 2

$scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Definition

Remove-Item -Recurse -Force "$scriptDirectory/**/*.cproj"
Remove-Item -Recurse -Force "$scriptDirectory/**/*.csproj"
Remove-Item -Recurse -Force "$scriptDirectory/**/obj"
Remove-Item -Recurse -Force "$scriptDirectory/**/bin"
