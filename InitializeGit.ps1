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
    # OS generated files # `n
    .DS_Store* `n
    Icon? `n
    # Visual C++ cache files `n
    ipch/ `n
    *.aps `n
    *.ncb `n
    *.opensdf `n
    *.sdf `n
    *.cachefile `n
    # Visual Studio profiler `n
    *.psess `n
    *.vsp `n
    *.vspx `n
    # Guidance Automation Toolkit `n
    *.gpState `n
    # ReSharper is a .NET coding add-in `n
    _ReSharper*/ `n
    *.[Rr]e[Ss]harper `n
    # TeamCity is a build add-in `n
    _TeamCity* `n

    # DotCover is a Code Coverage Tool `n
    *.dotCover `n

    # NCrunch `n
    *.ncrunch* `n
    .*crunch*.local.xml `n

    # Installshield output folder `n
    [Ee]xpress/ `n

    # DocProject is a documentation generator add-in `n
    DocProject/buildhelp/ `n
    DocProject/Help/*.HxT `n
    DocProject/Help/*.HxC `n
    DocProject/Help/*.hhc `n
    DocProject/Help/*.hhk `n
    DocProject/Help/*.hhp `n
    DocProject/Help/Html2 `n
    DocProject/Help/html `n
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
