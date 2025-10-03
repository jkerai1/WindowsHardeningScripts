EnableLmhosts

    Key: Netbt\Parameters  
    Value type: REG_DWORD - Boolean  
    Valid range: 0 or 1 (False or True)  
    Default: 1 (True)  
    Description: If this value is set to 1 (True), NBT searches the LMHOSTS file, if it exists, for names that cannot be resolved by WINS or broadcast. By default, there is no LMHOSTS file database directory (specified by Tcpip\Parameters\DatabasePath).   
    Therefore, NBT takes no action. This value is written by the Advanced TCP/IP configuration under the Network tool in Control Panel.  



where LMHOSTs file is %SystemRoot%\System32\drivers\etc

Lower chance of DNS poison attack  

Ref: https://learn.microsoft.com/en-US/troubleshoot/windows-client/networking/tcpip-and-nbt-configuration-parameters?WT.mc_id=MVP_473477
