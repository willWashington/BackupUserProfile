$un = Read-Host "Enter User Name: "
$pc = Read-Host "Enter PC Name: "
$ip = [System.Net.Dns]::GetHostAddresses($pc)
Write-Host $ip

Write-Host "Please be aware this process will not work if the DNS does not store the current IP for the machine." -ForegroundColor Magenta

Copy-Item -Path "\\$ip\c$\Users\$un\Contacts" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Desktop" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Documents" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Favorites" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Links" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Music" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Pictures" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Searches" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\Videos" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force

Copy-Item -Path "\\$ip\c$\Users\$un\appdata\roaming\microsoft\windows\recent\automaticdestinations" -Recurse -Destination "c:\_profBkup\$un\QAbk" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\AppData\Local\Google\Chrome\User Data\Default\bookmarks.bak" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force
Copy-Item -Path "\\$ip\c$\Users\$un\AppData\Local\Google\Chrome\User Data\Default\bookmarks" -Recurse -Destination "c:\_profBkup\$un\" -Container -Verbose -Force

Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize > c:\_profBkup\$un\installedSoftware.txt -Verbose

pause

