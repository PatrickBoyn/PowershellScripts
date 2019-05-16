function New-Push {
    param ($RemoteOrigin)
    git.exe remote add origin $RemoteOrigin
    git.exe push -u origin master
}