Straight from CIS:

81.20 (L1) Ensure 'Remote Procedure Call (RPC) Locator (RpcLocator)' is set to 'Disabled'
Description:

In Windows 2003 and older versions of Windows, the Remote Procedure Call (RPC) Locator service manages the RPC name service database. In Windows Vista or newer versions of Windows, this service does not provide any functionality and is present for application compatibility.

The recommended state for this setting is: Disabled .

This is a legacy service that has no value or purpose other than application compatibility for very old software. It should be disabled unless there is a specific old application still in use on the system that requires it.

To establish the recommended configuration, set the following Custom Configuration Policy to 4 :
Name: <Enter name>

Description: <Enter Description>

OMA-URI: ./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureRemoteProcedureCallLocatorServiceStartupMode

Data Type: Integer

Value: 4

Note: As of January 2024, despite its inclusion in Microsoft’s official documentation, using an OMI-URI to configure a Windows Service Startup Mode via a custom profile will lead to an error in Intune. This error will be logged in the local event log as “The system cannot find the file specified.” Currently, the most reliable method for remediation is through PowerShell.

The recommended configuration can also be established via PowerShell by running the following cmdlet:
Set-Service -Name RpcLocator -StartupType Disabled

Impact:

No impact, unless an old, legacy application requires it.
