Describe "Function1" {
    Context "When input is valid" {
        It "Should return the expected result" {
            # Arrange
            $myInput = "blah"

            # Act
            $result = Function1 -Parameter1 $myInput

            # Assert
            $result | Should -Be "blah"
        }
    }
}