Straight From CIS:

81.32 (L1) Ensure 'Windows Media Player Network Sharing Service (WMPNetworkSvc)' is set to 'Disabled' or 'Not Installed'
Description:

Shares Windows Media Player libraries to other networked players and media devices using Universal Plug and Play.

The recommended state for this setting is: Disabled or Not Installed .

Network sharing of media from Media Player has no place in an enterprise managed environment.

To establish the recommended configuration, set the following Custom Configuration Policy to 4 or confirm that the service is Not installed :
Name: <Enter name>

Description: <Enter Description>

OMA-URI:

./Device/Vendor/MSFT/Policy/Config/SystemServices/ConfigureWindowsMediaPlayerNetworkSharingServiceStartupMode

Data Type: Integer

Value: 4

Note: As of January 2024, despite its inclusion in Microsoft’s official documentation, using an OMI-URI to configure a Windows Service Startup Mode via a custom profile will lead to an error in Intune. This error will be logged in the local event log as “The system cannot find the file specified.” Currently, the most reliable method for remediation is through PowerShell.

The recommended configuration can also be established via PowerShell by running the following cmdlet:
Set-Service -Name WMPNetworkSvc -StartupType Disabled

Impact:

Windows Media Player libraries will not be shared over the network to other devices and systems.
