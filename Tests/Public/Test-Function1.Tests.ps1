BeforeAll {
    #Module is Downloaded from Github Artifacts and in the module folder
    Import-Module -Name $PSScriptRoot/../Modules/demomodule
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