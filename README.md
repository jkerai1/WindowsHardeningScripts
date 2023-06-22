# Windows Hardening  

Hardening Powershell /cmd  Scripts to deploy from something like intune

Caution: Some scripts may brick your environment, review carefully 

Requires admin as registry changes 

Scripts are not signed 

Write-Host is not applicable in intune scenario  


May need to comment in/out the "New-Item" if the key does not exist/Does already exist

Some of this would be better done with GPO/Intune but if not applicable can use powershell script (e.g. LSA Protection)

Could even be deployed from Live Response (MDE) if unsigned powershell scripts are allowed as post compromise remediation  

Pull Requests Welcome 
