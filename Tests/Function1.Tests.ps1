Describe "Function1 Tests" {
    BeforeAll {
        # Import the module containing Function1
        Import-Module -Name "/C:/Users/dks0640550/OneDrive - Dick's Sporting Goods, Inc/Documents/GitHub/jubilant-enigma/Source/Public/Function1.ps1"
    }

    Context "When calling Function1" {
        It "Should write 'Function1 Begin' to verbose output" {
            { Function1 -Parameter1 "Test" -Verbose } | Should -Write "Function1 Begin"
        }

        It "Should write 'Function1 Process' to verbose output" {
            { Function1 -Parameter1 "Test" -Verbose } | Should -Write "Function1 Process"
        }

        It "Should call HelperFunction1 with the correct parameter" {
            Mock HelperFunction1 { param($Parameter1) } -Verifiable

            Function1 -Parameter1 "Test"

            Assert-MockCalled HelperFunction1 -ParameterFilter { $Parameter1 -eq "Test" }
        }

        It "Should write 'Function1 End' to verbose output" {
            { Function1 -Parameter1 "Test" -Verbose } | Should -Write "Function1 End"
        }
    }
}