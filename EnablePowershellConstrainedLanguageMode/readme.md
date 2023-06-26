What does Constrained Language constrain?

Constrained Language consists of a number of restrictions that limit unconstrained code execution on a locked-down system. These restrictions are:

    PowerShell module script files must explicitly export functions by name without the use of wildcard characters. This is to prevent inadvertently exposing powerful helper function not meant to be used publicly.
    PowerShell module manifest files must explicitly export functions by name without the use of wildcards. Again, to prevent inadvertent exposure of functions.
    COM objects are blocked. They can expose Win32 APIs that have likely never been rigorously hardened as part of an attack surface.
    Only approved .NET types are allowed. Many .NET types can be used to invoke arbitrary Win32 APIs. As a result only specific whitelisted types are allowed.
    Add-Type is blocked. It allows the creation of arbitrary types defined in different languages.
    The use of PowerShell classes are disallowed. PowerShell classes are just arbitrary C# type definitions.
    PowerShell type conversion is not allowed. Type conversion implicitly creates types and runs type constructors.
    Dot sourcing across language modes is disallowed. Dot sourcing a script file brings all functions, variables, aliases from that script into the current scope. So this blocks a trusted script from being dot sourced into an untrusted script and exposing all of its internal functions. Similarly, an untrusted script is prevented from being dot sourced into a trusted script so that it cannot pollute the trusted scope.
    Command resolution automatically hides commands you cannot run. For example, a function created in Constrained Language mode is not visible to script running in Full Language mode.
    XAML based workflows are blocked since they cannot be constrained by PowerShell. But script based workflows and trusted XAML based workflows shipped in-box are allowed.
    The SupportedCommand parameter for Import-LocalizedData is disabled. It allows additional commands prevented by Constrained Language.
    Invoke-Expression cmdlet always runs in Constrained Language. Invoke-Expression cannot validate input as trusted.
    Set-PSBreakpoint command is blocked unless there is a system-wide lockdown through UMCI.
    Command completers are always run in Constrained Language. Command completers are not validated as trustworthy.
    Commands and script run within the script debugger will always be run in Constrained Language if there is a system-wide lockdown.
    The DSC Configuration keyword is disabled.
    Supported commands and Statements are not allowed in script DATA sections.
    Start-Job is unavailable if the system is not locked-down. Start-Job starts PowerShell in a new process and if the system is not locked-down the new process runs in Full Language mode.

As we can see, Constrained Language mode imposes some significant restrictions on PowerShell. Nevertheless, it remains a formidable and capable shell and scripting language. You can run native commands and PowerShell cmdlets and you have access to the full scripting features: variables, statements, loops, functions, arrays, hashtables, error handling, etc.
  
  https://devblogs.microsoft.com/powershell/powershell-constrained-language-mode/  

  Will stop the Import-Module
