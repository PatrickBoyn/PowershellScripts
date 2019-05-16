function New-Init {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [String]$Path
    )

    BEGIN {    
        Set-Location $Path

        New-Item -Path $Path -Name ".gitignore" -ItemType "file"
        git.exe init 
        git.exe stage -A
        git.exe commit -am  "Initial Commit"
}
    PROCESS {}
    END {
        explorer.exe $Path
        Write-Host "Finished."
    }
} 
