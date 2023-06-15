# Define the registry key and value name
$regKey= "HKLM:\SOFTWARE\Policies\Microsoft\WinRM\Client"
$regKey1 = "HKLM:\SOFTWARE\Policies\Microsoft\WinRM\Service"
$key0 = "AllowBasic"

# Check if the value exists and is already set to 0
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 0) {
    Write-Host "The value of '$key0' is already set to 0."

}
else {
try {
    # Set the value to 0
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WinRM"
    New-Item -Path $regkey -Force
    Set-ItemProperty -Path $regKey -Name $key0 -Value 0 -Type DWORD -Force
    Write-Host "The value of '$key0' has been set to 0."
}

catch {
    Exit 0
}
}

if ((Test-Path $regKey1) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 0) {
    Write-Host "The value of '$key0' is already set to 0."

}

else {
try {
    # Set the value to 0
    ##New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WinRM"
    New-Item -Path $regkey1 -Force
    Set-ItemProperty -Path $regKey1 -Name $key0 -Value 0 -Type DWORD -Force
    Write-Host "The value of '$key0' has been set to 0."
}

catch {
    Exit 0
}
}
