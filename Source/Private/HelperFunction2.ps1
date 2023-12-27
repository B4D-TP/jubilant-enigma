function HelperFunction2 {
    <#
    .SYNOPSIS
    This function performs a specific operation using two input parameters.
    .DESCRIPTION
    The HelperFunction2 function takes two mandatory string parameters, $param1 and $param2, and performs a specific operation. The function returns the result of concatenating $param1 and $param2.
    .PARAMETER param1
    The first input parameter of type string. This parameter is mandatory.
    .PARAMETER param2
    The second input parameter of type string. This parameter is mandatory.
    .EXAMPLE
    HelperFunction2 -param1 "Hello" -param2 "World"
    This example demonstrates how to use the HelperFunction2 function to concatenate two strings and return the result.
    .INPUTS
    None. You cannot pipe input to this function.
    .OUTPUTS
    System.String. The function returns a string that is the result of concatenating $param1 and $param2.
    #>
    param(
        [Parameter(Mandatory = $true)]
        [string]$param1,

        [Parameter(Mandatory = $true)]
        [string]$param2
    )

    # Here you can write the logic of your function
    # This is just an example
    $result = $param1 + $param2

    return $result
}

Export-ModuleMember -Function 'HelperFunction2'