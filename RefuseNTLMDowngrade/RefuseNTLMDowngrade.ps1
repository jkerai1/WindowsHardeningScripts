# Define the registry key and value name
$regKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$key1 = "LMCompatibilityLevel"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key1 -ErrorAction SilentlyContinue).$key1 -eq 5) {
    Write-Host "The value of '$key1' is already set to 5." ##5 is highest level

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $key1 -Value 5 -Type DWORD -Force
    Write-Host "The value of '$key1' has been set to 5."
}

catch {
    Exit 1
}
}
