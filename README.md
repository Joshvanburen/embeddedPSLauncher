# embeddedPSLauncher
Launches a PowerShell Script Embedded in a C# Executable

The executable does the following:

1. Extracts the embedded script to the TEMP folder.
2. Sets the execution policy to bypass for the current process (this executable).
3. Launches the extracted script.
4. Deletes the extracted script after it has run.

A batch file to compile the executable in Windows is included that uses the C# compiler included in .NET.