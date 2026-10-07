@{
    Name = 'Sally@0xeb'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Website = "https://github.com/0xeb/sally"
    Description = "Fork of Altap Salamander with full unicode support, dark theme and other fixes."

    # NOTE: for older versions, reinstallation may fail because File Explorer holds a lock over `/app/utils/salextx64.dll`
    #  in that case, unload it with `regsvr32.exe /u ...\app\utils\salextx64.dll /s``
    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
    }

    NonPortablePaths = @(
        "HKCU:/SOFTWARE/Sally"
    )

    Enable = {
        Export-Command "sally" "./app/sally.exe"
        Export-Shortcut "Sally" "./app/sally.exe"
    }
}