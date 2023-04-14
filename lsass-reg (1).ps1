# Define the registry key and value name
$regKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$valueName = "RunAsPPL"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $valueName -ErrorAction SilentlyContinue).$valueName -eq 1) {
    Write-Host "The value of '$valueName' is already set to 1."

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $valueName -Value 1 -Type DWORD -Force
    Write-Host "The value of '$valueName' has been set to 1."
}

catch {
    Exit 1
}

}
