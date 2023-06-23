Bear in mind a user can elevate Powershell execution policy (without admin) within their user scope and within session  e.g  

![image](https://github.com/jkerai1/WindowsHardeningScripts/assets/55988027/7756a066-2ddf-4af1-8390-6b1a9ff794ed)

This should be used instead of granting admin and setting unrestricted scope out of session

Machine Policy & User Policy Should be set by Group policy:

![image](https://github.com/jkerai1/WindowsHardeningScripts/assets/55988027/ae4aae8e-fe2e-4e10-84d8-86510b799b89)



# Reference

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3
