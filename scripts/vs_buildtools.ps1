#.\vs_buildtools\vs_buildtools.exe --config .\vs_buildtools\.vsconfig --quiet --wait

# setup Visual Studio Building Tools 2019

if (!(Test-Path "c:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\")) {
    Write-Output "Installing Visual Studio Building Tools 2019"
    Start-Process "C:\Users\vagrant\Downloads\vs_buildtools.exe" "--config C:\Users\vagrant\Downloads\.vsconfig --quiet --wait" -NoNewWindow -Wait
}