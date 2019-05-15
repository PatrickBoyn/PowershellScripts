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
    [Oo]bj/ `n
    # NuGet Packages 'n
    *.nupkg 'n
    # The packages folder can be ignored because of Package Restore 'n
    **/packages/* 'n
    # except build/, which is used as an MSBuild target. 'n
    !**/packages/build/ 'n
    # MSTest test Results
    [Tt]est[Rr]esult*/ `n
    [Bb]uild[Ll]og.* `n
    *_i.c `n
    *_p.c `n
    *.ilk `n
    *.meta `n
    *.obj `n
    *.pch `n
    *.pdb `n
    *.pgc `n
    *.pgd `n
    *.rsp `n
    *.sbr `n
    *.tlb `n
    *.tli `n
    *.tlh `n
    *.tmp `n
    *.tmp_proj `n
    *.log `n
    *.vspscc `n
    *.vssscc `n
    .builds `n
    *.pidb `n
    *.log `n
    *.scc `n
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
