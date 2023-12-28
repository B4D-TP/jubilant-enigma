Function Function1 {
    <#
    .SYNOPSIS
    This is a function named Function1.
    .DESCRIPTION
    Function1 is a PowerShell function that takes a mandatory parameter named Parameter1. It performs some processing and calls a private function named HelperFunction1.
    .PARAMETER Parameter1
    Specifies the value for the mandatory parameter Parameter1.
    .EXAMPLE
    Function1 -Parameter1 "Value"
    This example demonstrates how to call the Function1 function with the value "Value" for the Parameter1 parameter.
    .OUTPUTS
    None.
    .NOTES
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Parameter1
    )

    begin {
        Write-Verbose "Function1 Begin"
    }

    process {
        Write-Verbose "Function1 Process"
        # Call to private function
        $retrun = HelperFunction1 -Parameter1 $Parameter1
        return $retrun
    }

    end {
        Write-Verbose "Function1 End"
    }
}