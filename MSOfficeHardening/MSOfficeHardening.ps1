reg add "HKCU\Software\Policies\Microsoft\Office\12.0\Publisher\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\12.0\Word\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\14.0\Publisher\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\14.0\Word\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Outlook\Security" /v markinternalasunsafe /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Word\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Excel\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\PowerPoint\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Word\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Publisher\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Outlook\Security" /v markinternalasunsafe /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Word\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Excel\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\PowerPoint\Security" /v blockcontentexecutionfrominternet /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Word\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Publisher\Security" /v vbawarnings /t REG_DWORD /d 4 /f
reg add "HKCU\Software\Policies\Microsoft\Office\12.0\Onenote\options" /v disableembeddedfiles /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\14.0\Onenote\options" /v disableembeddedfiles /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Onenote\options" /v disableembeddedfiles /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Onenote\options" /v disableembeddedfiles /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Office\12.0\Onenote\options\embeddedfileopenoptions" /v blockedextensions /t REG_SZ /d ".js;.exe;.bat;.vbs;.com;.scr;.cmd;.ps" /f
reg add "HKCU\Software\Policies\Microsoft\Office\14.0\Onenote\options\embeddedfileopenoptions" /v blockedextensions /t REG_SZ /d ".js;.exe;.bat;.vbs;.com;.scr;.cmd;.ps" /f
reg add "HKCU\Software\Policies\Microsoft\Office\15.0\Onenote\options\embeddedfileopenoptions" /v blockedextensions /t REG_SZ /d ".js;.exe;.bat;.vbs;.com;.scr;.cmd;.ps" /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Onenote\options\embeddedfileopenoptions" /v blockedextensions /t REG_SZ /d ".js;.exe;.bat;.vbs;.com;.scr;.cmd;.ps" /f
#Enable AMSI for all documents by setting the following registry key - Office 2016 or Office 365 installed
reg add "HKCU\Software\Microsoft\Office\16.0\Common\Security" /v MacroRuntimeScanScope /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Policies\Microsoft\Office\16.0\Common\Security" /v MacroRuntimeScanScope /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Office\14.0\Word\Options" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\14.0\Word\Options\WordMail" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\15.0\Word\Options" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\15.0\Word\Options\WordMail" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Options\WordMail" /v DontUpdateLinks /t REG_DWORD /d 00000001 /f
reg add "HKCU\Software\Microsoft\Office\14.0\Word\Security\FileBlock" /v RtfFiles /t REG_DWORD /d 00000002 /f
reg add "HKCU\Software\Microsoft\Office\15.0\Word\Security\FileBlock" /v RtfFiles /t REG_DWORD /d 00000002 /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\FileBlock" /v RtfFiles /t REG_DWORD /d 00000002 /f
reg add "HKCU\Software\Microsoft\Office\14.0\Word\Security\FileBlock" /v OpenInProtectedView /t REG_DWORD /d 00000000 /f
reg add "HKCU\Software\Microsoft\Office\15.0\Word\Security\FileBlock" /v OpenInProtectedView /t REG_DWORD /d 00000000 /f
reg add "HKCU\Software\Microsoft\Office\16.0\Word\Security\FileBlock" /v OpenInProtectedView /t REG_DWORD /d 00000000 /f
