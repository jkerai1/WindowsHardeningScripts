# Define the registry key and value name
$regKey= "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
$key0 = "NoDriveTypeAutoRun"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 1) {
    Write-Host "The value of '$key0' under $regKey is already set to 1."

}
else {
try {
    # Set the value
    Set-ItemProperty -Path $regKey -Name $key0 -Value 1 -Type DWORD -Force
    Write-Host "The value of '$key0' under $regKey has been set to 1."
}

catch {
    Exit 0
}
}
