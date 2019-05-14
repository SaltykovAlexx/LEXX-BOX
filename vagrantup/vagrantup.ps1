chcp 1251
sqlcmd -S .\ -U sa -P P@ssw0rd -i "C:\vagrant\vagrantup\CreateDB.sql"
sqlcmd -S .\ -U sa -P P@ssw0rd -i "C:\vagrant\vagrantup\CreateTable.sql"
C:\vagrant\vagrantup\gitclone.bat
New-WebApplication -Name Gamestore -Site 'Default Web Site' -PhysicalPath C:\inetpub\wwwroot\GameStore -ApplicationPool DefaultAppPool -Force
cd "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin\"
.\MSBuild.exe "C:\Program Files\Git\LEXX-GameStore\GameStore.WebUI\GameStore.WebUI.csproj" /p:DeployOnBuild=true /p:PublishProfile="C:\Program Files\Git\LEXX-GameStore\CustomProfile.pubxml"