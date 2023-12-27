Describe "Function2 Tests" {
    BeforeAll {
        # Import the module containing Function2
        Import-Module -Name "/C:/Users/dks0640550/OneDrive - Dick's Sporting Goods, Inc/Documents/GitHub/jubilant-enigma/Source/Public/Function2.ps1"
    }

    Context "When calling Function2" {
        It "Should write 'Function2 Begin' to verbose output" {
            { Function2 -Parameter1 "Test" -Verbose } | Should -Write "Function2 Begin"
        }

        It "Should write 'Function2 Process' to verbose output" {
            { Function2 -Parameter1 "Test" -Verbose } | Should -Write "Function2 Process"
        }

        It "Should call HelperFunction1 with the correct parameters" {
            Mock HelperFunction1 { param($Parameter1, $Parameter2) } -Verifiable

            Function2 -Parameter1 "Test" -Parameter2 "Value"

            Assert-MockCalled HelperFunction1 -ParameterFilter { $Parameter1 -eq "Test" -and $Parameter2 -eq "Value" }
        }

        It "Should write 'Function2 End' to verbose output" {
            { Function2 -Parameter1 "Test" -Verbose } | Should -Write "Function2 End"
        }
    }
}