Function Function2 {
    <#
    .SYNOPSIS
    This function performs a specific task.
    .DESCRIPTION
    The Function2 function is used to perform a specific task. It takes two parameters, Parameter1 and Parameter2, and calls a private function called HelperFunction1.
    .PARAMETER Parameter1
    Specifies the value for Parameter1. This parameter is mandatory.
    .PARAMETER Parameter2
    Specifies the value for Parameter2. This parameter is optional.
    .EXAMPLE
    Function2 -Parameter1 "Value1" -Parameter2 "Value2"
    This example demonstrates how to call the Function2 function with the specified parameter values.
    .NOTES
    Author: [Your Name]
    Date: [Current Date]
    Version: 1.0
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Parameter1,

        [Parameter(Mandatory = $false)]
        [string]$Parameter2
    )

    begin {
        Write-Verbose "Function2 Begin"
    }

    process {
        Write-Verbose "Function2 Process"
        # Call to private function
        HelperFunction1 -Parameter1 $Parameter1 -Parameter2 $Parameter2
    }

    end {
        Write-Verbose "Function2 End"
    }
}