function New-Init {
    param ([String]$Path)

    Set-Location $Path

    New-Item -Path $Path -Name ".gitignore" -ItemType "file"
    git.exe init 
    git.exe stage -A
    git.exe commit -am  "Initial Commit"
    explorer.exe $Path
    Write-Host "Completed."
}

New-Init -Path "C:\Users\dakil\Desktop\Repos\CSharp\ConsoleApps\EFTesting" 
