New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" ##if doesnt exist then create it - may fail but script should continue
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Name "UseAdvancedStartup"  -Value "1"
