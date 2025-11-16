@{
    Name = 'tup'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
    }

    NonPortablePaths = @(
        # tup reads an ini config file from %APPDATA%\tup\tup.ini:
        # https://github.com/gittup/tup/blob/c9903fdfbb38517b15abe33ae36d6139c75f1481/src/tup/option.c#L573C2-L584C11
        "~/AppData/Roaming/tup"
    )

    Enable = {
        Export-Command "tup" "./app/tup.exe"
        Export-Command "tup32detect" "./app/tup32detect.exe"
    }
}