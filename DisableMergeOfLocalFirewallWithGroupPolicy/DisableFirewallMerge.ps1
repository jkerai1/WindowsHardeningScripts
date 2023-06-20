# Define the registry key and value name
$regKey= "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile"
$key0 = "AllowLocalIPsecPolicyMerge"

# Check if the value exists and is already set to 0
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 0) {
    Write-Host "The value of '$key0' under $regKey is already set to 0."

}
else {
try {
    # Set the value
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall"
    New-Item -Path $regKey
    Set-ItemProperty -Path $regKey -Name $key0 -Value 0 -Type DWORD -Force
    Write-Host "The value of '$key0' under $regKey  has been set to 0."
}

catch {
    Exit 0
}
}
