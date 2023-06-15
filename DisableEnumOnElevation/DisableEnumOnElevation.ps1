# Define the registry key and value name
$regKey= "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies"
$key0 = "EnumerateAdministrators"

# Check if the value exists and is already set to 0
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 0) {
    Write-Host "The value of '$key0' is already set to 0."

}
else {
try {
    # Set the value
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\CredUI"
    Set-ItemProperty -Path $regKey -Name $key0 -Value 0 -Type DWORD -Force
    Write-Host "The value of '$key0' has been set to 0."
}

catch {
    Exit 0
}
}
