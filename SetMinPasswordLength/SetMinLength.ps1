Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Network" -Name "MinPwdLen"  -Value "14"
net accounts /minpwlen:14
