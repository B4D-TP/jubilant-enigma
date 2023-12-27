@{
    # Rule configurations
    Rules = @{
        PSAvoidUsingCmdletAliases                   = @{
            'Enable'   = $true
            'Severity' = 'Warning'
        }
        PSAvoidUsingWriteHost                       = @{
            'Enable'   = $true
            'Severity' = 'Error'
        }
        PSUseDeclaredVarsMoreThanAssignments        = @{
            'Enable'   = $true
            'Severity' = 'Warning'
        }
        PSUseCmdletCorrectly                        = @{
            'Enable'   = $true
            'Severity' = 'Error'
        }
        PSUseShouldProcessForStateChangingFunctions = @{
            'Enable'   = $true
            'Severity' = 'Warning'
        }
        PSAvoidUsingPlainTextForPassword            = @{
            'Enable'   = $true
            'Severity' = 'Error'
        }
    }

}