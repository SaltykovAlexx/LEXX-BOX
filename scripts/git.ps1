# setup git
$git_download_url = "https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/Git-2.21.0-64-bit.exe"

if (!(Test-Path "C:\Program Files\Git\git-bash.exe")) {
    Write-Output "Downloading $git_download_url"
    (New-Object System.Net.WebClient).DownloadFile($git_download_url, "C:\Windows\Temp\Git-2.21.0-64-bit.exe")

    Start-Process "C:\Windows\Temp\Git-2.21.0-64-bit.exe" "/VERYSILENT" -NoNewWindow -Wait
}