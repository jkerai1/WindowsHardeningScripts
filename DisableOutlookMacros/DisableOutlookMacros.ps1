$regKey = "HKCU:\Software\Microsoft\Office\16.0\Outlook\Security"
$key1 = "Level"

# Check if the value exists and is already set to 4 #disable all
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key1 -ErrorAction SilentlyContinue).$key1 -eq 4) {
    Write-Host "The value of '$key1' under $regKey is already set to 4."

}
else {
try {
    # Set the value to 1
    Set-ItemProperty -Path $regKey -Name $key1 -Value 4 -Type DWORD -Force
    Write-Host "The value of '$key1' under $regKey has been set to 4."
}

catch {
    Exit 1
}
}
