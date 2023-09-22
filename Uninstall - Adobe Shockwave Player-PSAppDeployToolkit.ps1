Invoke-WebRequest -URI 'https://github.com/PSAppDeployToolkit/PSAppDeployToolkit/releases/download/3.9.3/PSAppDeployToolkit_v3.9.3.zip' -Outfile 'C:\Temp\PSAppDeployToolkit_V3.9.3.zip'
Unblock-File -Path C:\Temp\PSAppDeployToolkit_v3.8.3.zip
Expand-Archive 'C:\Temp\PSAppDeployToolkit_V3.9.3.zip' -DesintationPath 'C:\Temp\PADT' -Force
Copy-Item -Path "C:\Temp\PADT\Toolkit\AppDeployToolkit" -Destination "C:\Temp\ShockwaveUninstall\AppDeployToolkit" -Recurse
Copy-Item -Path "C:\Temp\PADT\Toolkit\Files" -Destination "C:\Temp\ShockwaveUninstall\Files"
Invoke-WebRequest -URI 'https://download.macromedia.com/get/shockwave/uninstall/win/sw_uninstaller.exe' -Outfile 'C:\Temp\ShockwaveUninstall\Files\sw_uninstaller.exe'
