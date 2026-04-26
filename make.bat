::Josh Van Buren
::Batch file to compile the C# code for the embedded PowerShell script

::Uncomment to hide command line echoes

::Set some variables to make editing easier
set csc="%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
set platform=/platform:anycpu
set target=/target:winexe
set manifest=/win32manifest:"%~dp0embeddedPSLauncher.manifest" 
set icon=/win32icon:"%~dp0defaultIcon.ico"
set references=/reference:"%SystemRoot%\Microsoft.Net\assembly\GAC_MSIL\System.Management.Automation\v4.0_3.0.0.0__31bf3856ad364e35\System.Management.Automation.dll"
set resources=/resource:"%~dp0embeddedScript.ps1",embeddedScript
set optionalParameters=/optimize
set out=/out:
set executableName="%~dp0embeddedPSScript.exe"
set sources="%~dp0embeddedPSLauncher.cs" "%~dp0embeddedPSLauncherAssembly.cs"

::Compile command 
%csc% %platform% %target% %icon% %references% %resources% %optionalParameters% %out%%executableName% %sources%