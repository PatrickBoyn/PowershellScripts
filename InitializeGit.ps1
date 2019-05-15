function New-Init {
    param ([String]$Path, [String]$Origin)

    Set-Location $Path

    New-Item -Path $Path -Name ".gitignore" -ItemType "file"
    Add-Content "C:\Users\dakil\Desktop\Repos\CSharp\ConsoleApps\EFTesting\.gitignore" "
    # User-specific files `n
    *.suo `n
    *.user `n
    *.sln.docstates `n
    # Build results 'n
    [Dd]ebug/ 'n
    [Rr]elease/ 'n
    x64/ 'n
    [Bb]in/ 'n
    [Oo]bj/
    "
    git.exe init 
    git.exe stage -A
    git.exe commit -am  "Initial Commit"
    git.exe add origin $Origin
    git.exe remote add origin $Origin
    git.exe push -u origin master
    explorer.exe $Path
    Write-Host "Completed."
}

New-Init -Path "C:\Users\dakil\Desktop\Repos\CSharp\ConsoleApps\EFTesting" -Origin "git@github.com:PatrickBoyn/EFLearning.git"
