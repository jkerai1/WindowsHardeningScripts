# Define the registry key and value name
$regKey= "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access"
$key0 = "EnableControlledFolderAccess"

# Check if the value exists and is already set to 1
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 1) {
    Write-Host "The value of '$key0' is already set to 1."

}
else {
try {
    # Set the value to 1
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard" ##if doesnt exist then create it 
    New-Item $regKey
    Set-ItemProperty -Path $regKey -Name $key0 -Value 1 -Type DWORD -Force
    Write-Host "The value of '$key0' has been set to 1."
}

catch {
    Exit 0
}
}
