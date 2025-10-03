## Refuse NTLM Downgrade

Sets to level 5 :

"Client devices use NTLMv2 authentication, and they use NTLMv2 session security if the server supports it. Domain controllers refuse to accept LM and NTLM authentication, and they'll accept only NTLMv2 authentication."  

set as apprioprate  

https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/network-security-lan-manager-authentication-level?WT.mc_id=MVP_473477


LM should not be used under any circumstances and has been depreciated.  
