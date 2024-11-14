# Define the path to the registry key
$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"

# Define the name of the registry value to check
$Name = "DisableDomainCreds"

# Define the expected value of the registry value
$Value = "1"

# Retrieve the value of the registry value
$Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue | Select-Object -ExpandProperty $Name

# If the registry value matches the expected value, output "Compliant"
If ($Registry -eq $Value){
    Write-Output "Compliant"
    #Exit 0
} 
# If the registry value does not match the expected value, remediate and output "Fixed"
Else {
    Write-Warning "Not Compliant. Attempting remediation..."
    # Set the registry value to the expected value
    Set-ItemProperty -Path $Path -Name $Name -Value $Value -Force
    # Verify remediation
    $RemediatedRegistry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue | Select-Object -ExpandProperty $Name
    if ($RemediatedRegistry -eq $Value) {
        Write-Output "Fixed"
        Exit 0
    } else {
        Write-Warning "Remediation failed"
        Exit 1
    }
}
