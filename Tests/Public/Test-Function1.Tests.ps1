BeforeAll {
    #Check if the module is loaded
    if (-not (Get-Module -Name demomodule )) {
        #Load the module
        Import-Module -Name demomodule
    }
}

Describe "Test-Function1" {
    Context "When called with a valid parameter" {
        It "Should return the expected value" {
            $expected = "Value"
            $actual = Test-Function1 -Parameter1 $expected
            $actual | Should -Be $expected
        }
    }
}