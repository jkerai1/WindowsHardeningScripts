https://learn.microsoft.com/en-us/windows/security/identity-protection/credential-guard/credential-guard-manage?WT.mc_id=MVP_473477  

Enable cred guard + LSA protection for strong LSASS Protection baseline  

Keys:  

HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\DeviceGuard key: EnableVirtualizationBasedSecurity value: 1

HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\DeviceGuard Key: RequirePlatformSecurityFeatures value: 3

HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\LSA Key: LsaCfgFlags value: 1  

Ref: https://techcult.com/enable-or-disable-credential-guard-in-windows-10/
