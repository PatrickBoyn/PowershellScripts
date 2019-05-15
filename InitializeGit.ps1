function New-Init {
    param ([String]$FolderName, [String]$NewFolderName)
    $Location = "C:\Users\dakil\Desktop\Repos\"

    Set-Location $Location$FolderName

    New-Item -Path $Location$FolderName -Name ".gitignore" -ItemType "file"
    git.exe init 
    git.exe stage -A
    git.exe commit -am  "Initial Commit"
    git.exe status
    explorer.exe $Location$FolderName
}
