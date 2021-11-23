function Convert-Temperature {
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
        Write-Verbose "[BEGIN  ] Starting: $($MyInvocation.Mycommand)"  
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
        Write-Verbose "[END  ] Ending: $($MyInvocation.Mycommand)"  
    }
}
Convert-Temperature -Verbose