# Define the registry key and value name
$regPath= "HKLM:\SOFTWARE\Policies\Microsoft"
$regKey = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"
$key0 = "MinimiumPin"

# Check if the value exists and is already set to 6
if ((Test-Path $regKey) -and (Get-ItemProperty $regKey -Name $key0 -ErrorAction SilentlyContinue).$key0 -eq 6) {
    Write-Host "The value of '$key0' is already set to 6."

}
else {
try {
    # Set the value to 6
    #New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" ##if doesnt exist then create it 
    Set-ItemProperty -Path $regKey -Name $key0 -Value 6 -Type DWORD -Force
    Write-Host "The value of '$key0' has been set to 6."
}

catch {
    Exit 0
}
}
