Straight from CIS


81.33 (L1) Ensure 'Windows Mobile Hotspot Service (icssvc)' is set to 'Disabled'
Description:

Provides the ability to share a cellular data connection with another device.

The recommended state for this setting is: Disabled .

The capability to run a mobile hotspot from a domain-connected computer could easily expose the internal network to wardrivers or other hackers.

To establish the recommended configuration, set the following Custom Configuration Policy to 4 or confirm that the service is Not installed :
Name: <Enter name>

Description: <Enter Description>

OMA-URI: ./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureWindowsMobileHotspotServiceStartupMode

Data Type: Integer

Value: 4

Note: As of January 2024, despite its inclusion in Microsoft’s official documentation, using an OMI-URI to configure a Windows Service Startup Mode via a custom profile will lead to an error in Intune. This error will be logged in the local event log as “The system cannot find the file specified.” Currently, the most reliable method for remediation is through PowerShell.

The recommended configuration can also be established via PowerShell by running the following cmdlet:
Set-Service -Name icssvc -StartupType Disabled

Impact:

The Windows Mobile Hotspot feature will not be available.
