# Define the registry key and value name
$regKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$regkey2 = "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard"
$key1 = "LsaCfgFlags"
$key2 = "RequirePlatformSecurityFeatures"
$key3 = "EnableVirtualizationBasedSecurity"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey2) -and (Get-ItemProperty $regKey2 -Name $key3 -ErrorAction SilentlyContinue).$key3 -eq 1) { #HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard & EnableVirtualizationBasedSecurity
    Write-Host "The value of '$key3' under $regKey2 is already set to 1."

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey2 -Name $key3 -Value 1 -Type DWORD -Force
    Write-Host "The value of '$key3' under $regKey2 has been set to 1."
}

catch {
    Exit 1
}
}

# Check if the value exists and is already set to 3
if ((Test-Path $regKey2) -and (Get-ItemProperty $regKey2 -Name $key2 -ErrorAction SilentlyContinue).$key2 -eq 3) {
    Write-Host "The value of '$key2' under $regKey2 is already set to 3."

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey2 -Name $key2 -Value 3 -Type DWORD -Force #RequirePlatformSecurityFeatures under HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard
    Write-Host "The value of '$key2' under $regKey2 has been set to 3." ##SecureBoot & DMA Protection
}

catch {
    Exit 1
}
}


if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key1 -ErrorAction SilentlyContinue).$key1 -eq 1) {
    Write-Host "The value of '$key1' under $regKey is already set to 1."

}

else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $key1 -Value 1 -Type DWORD -Force # "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" & "LsaCfgFlags"
    Write-Host "The value of '$key1' under $regKey has been set to 1." #Windows Defender Credential Guard with UEFI lock
}

catch {
    Exit 1
}
}
