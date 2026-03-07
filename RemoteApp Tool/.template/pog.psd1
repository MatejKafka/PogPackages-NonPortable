@{
    Name = 'RemoteApp Tool'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
    }

    NonPortablePaths = @(
        # writes are done by the default .NET application data storage mechanism and cannot be overriden
        "~/AppData/Local/Kim_Knight"
        # the created apps,, which are necessary for the system to allow the app are stored here:
        # Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Terminal Server\TSAppAllowList\Applications
    )

    Enable = {
        Disable-DisplayScaling "./app/RemoteApp Tool.exe"
        Export-Shortcut "RemoteApp Tool" "./app/RemoteApp Tool.exe"
    }
}