#Enable Cloud functionality of Windows Defender
Set-MpPreference -MAPSReporting 2
Set-MpPreference -SubmitSamplesConsent 3
Set-MpPreference -CloudBlockLevel ZeroTolerance
Set-MpPreference -CloudExtendedTimeout 50
