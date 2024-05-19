# Calls Vivado in batch mode with the provided Tcl script and arguments.

param (
    [string]$VivadoPath = "C:\Xilinx\Vivado\2023.2\bin\vivado",
    [string]$Mode = "batch",
    [Parameter(Mandatory=$true, Position=0)][string]$Source,
    [Parameter(ValueFromRemainingArguments=$true)][string[]]$TclArgs
)

# Build the command
$command = "$VivadoPath -mode $Mode -source `"$Source`""

# Add Tcl arguments if provided
if ($TclArgs) {
    $command += " -tclargs"
    foreach ($arg in $TclArgs) {
        $command += " `"$arg`""
    }
}

# Add flags to suppress log and journal
$command += " -nolog -nojournal"

# Invoke the command
Write-Host "Executing command: $command"
Invoke-Expression $command