Invoke-WebRequest -Uri 'https://fpdownload.macromedia.com/get/flashplayer/current/support/sw_uninstaller.exe' -OutFile 'c:\temp\sw_uninstaller.exe'

c:\temp\sw_uninstaller.exe -uninstall

Start-Sleep -Seconds 60

Remove-Item -Path "c:\temp\sw_uninstaller.exe" 