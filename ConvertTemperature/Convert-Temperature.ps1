function Convert-f2c {
    <#
    .SYNOPSIS
    
    .DESCRIPTION

    .PARAMETER 

    .PARAMETER 

    .PARAMETER

    .EXAMPLE

    .EXAMPLE
    #>
    
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$true)]
        [int]$temp_fahrenheit
        
    )
    BEGIN { 
        
    }
    
    PROCESS {        

        Try {
            $temp_celcius = ($temp_fahrenheit - 32) / 1.8
            Write-Output ("{0:n2}" -f $temp_celcius)
        }
        Catch {
            Write-Error "$($_.Exception.Message) - Line Number: $($_.InvocationInfo.ScriptLineNumber)"
        }
    }
    END { 
        
    }
}

function Convert-c2f {
    <#
    .SYNOPSIS
    
    .DESCRIPTION

    .PARAMETER 

    .PARAMETER 

    .PARAMETER

    .EXAMPLE

    .EXAMPLE
    #>
    
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,ValueFromPipeline=$true)]
        [int]$temp_celcius
        
    )
    BEGIN { 
          
    }
    
    PROCESS {        

        Try {
            $temp_fahrenheit = ($temp_celcius * 1.8) + 32
            Write-Output ("{0:n2}" -f $temp_fahrenheit)
        }
        Catch {
            Write-Error "$($_.Exception.Message) - Line Number: $($_.InvocationInfo.ScriptLineNumber)"
        }
    }
    END { 
         
    }
}
