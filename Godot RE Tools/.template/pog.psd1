@{
    Name = 'Godot RE Tools'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
    }

    NonPortablePaths = @(
        "~/AppData/Roaming/Godot/app_userdata/Godot RE Tools"
    )

    Enable = {
        Export-Command "gdre_tools" "./app/gdre_tools.exe"
        Export-Shortcut "Godot RE Tools" "./app/gdre_tools.exe"
    }
}