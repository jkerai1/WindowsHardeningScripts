# Define the registry key and value name
$regKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$key1 = "RunAsPPL"
$key2 = "RunAsPPLBoot"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key1 -ErrorAction SilentlyContinue).$key1 -eq 1) {
    Write-Host "The value of '$key1' under $regKey is already set to 1."

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $key1 -Value 1 -Type DWORD -Force
    Write-Host "The value of '$key1' under $regKey has been set to 1."
}

catch {
    Exit 1
}
}

if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key2 -ErrorAction SilentlyContinue).$key1 -eq 1) {
    Write-Host "The value of '$key2' under $regKey is already set to 1."

}

else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $key2 -Value 1 -Type DWORD -Force
    Write-Host "The value of '$key2' under $regKey has been set to 1."
}

catch {
    Exit 1
}
}
