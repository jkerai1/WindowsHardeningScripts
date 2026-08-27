Straight from CIS:

81.28 (L1) Ensure 'UPnP Device Host (upnphost)' is set to 'Disabled'
Description:

Allows UPnP devices to be hosted on this computer.

The recommended state for this setting is: Disabled .

Universal Plug n Play (UPnP) is a real security risk - it allows automatic discovery and attachment to network devices. Notes that UPnP is different than regular Plug n Play (PnP). Workstations should not be advertising their services (or automatically discovering and connecting to networked services) in a security-conscious enterprise managed environment.

To establish the recommended configuration, set the following Custom Configuration Policy to 4 :
Name: <Enter name>

Description: <Enter Description>

OMA-URI: ./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureUPnPDeviceHostServiceStartupMode

Data Type: Integer

Value: 4

Note: As of January 2024, despite its inclusion in Microsoft’s official documentation, using an OMI-URI to configure a Windows Service Startup Mode via a custom profile will lead to an error in Intune. This error will be logged in the local event log as “The system cannot find the file specified.” Currently, the most reliable method for remediation is through PowerShell.

The recommended configuration can also be established via PowerShell by running the following cmdlet:
Set-Service -Name upnphost -StartupType Disabled

Impact:

Any hosted UPnP devices will stop functioning and no additional hosted devices can be added.
