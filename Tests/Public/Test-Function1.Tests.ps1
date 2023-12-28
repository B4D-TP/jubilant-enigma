BeforeAll {
    $ProjectRoot = Split-Path $(Split-Path $PSScriptRoot -Parent) -Parent
    $ModuleName = $(Get-ChildItem -Path (Join-Path $ProjectRoot "Source") -Filter "*.psm1").Name.Replace(".psm1", "")
    $ModulePath = Join-Path $(Join-Path $ProjectRoot "Source") "$ModuleName.psm1"

    Get-Module -Name $ModuleName -All | Remove-Module -Force -ErrorAction Ignore
    Import-Module -Name $ModulePath -Force -ErrorAction Stop

    $NL = [System.Environment]::NewLine
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