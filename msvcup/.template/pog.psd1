@{
    Name = 'msvcup'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
    }

    NonPortablePaths = @(
        # used both for cache and manifest list; cache can be overriden with
        #  --cache-dir since a recent release, manifests are hardcoded to AppData
        "~/AppData/Local/msvcup"
    )

    Enable = {
        Export-Command "msvcup" "./app/msvcup.exe" -Symlink
    }
}