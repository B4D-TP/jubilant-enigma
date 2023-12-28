function HelperFunction1 {
    <#
    .SYNOPSIS
    This function is a helper function that concatenates two strings.
    .DESCRIPTION
    The HelperFunction1 function takes two mandatory string parameters, $param1 and $param2, and concatenates them together. The result is returned as a string.
    .PARAMETER param1
    The first string parameter to be concatenated.
    .PARAMETER param2
    The second string parameter to be concatenated.
    .EXAMPLE
    HelperFunction1 -param1 "Hello" -param2 "World"
    This example demonstrates how to use the HelperFunction1 function to concatenate the strings "Hello" and "World". The result will be "Hello and World".
    #>
    param(
        [Parameter(Mandatory = $true)]
        [string]$Parameter1
    )

    # Here you can write the logic of your function
    # This is just a simple example
    $result = "$Parameter1"

    return $result
}