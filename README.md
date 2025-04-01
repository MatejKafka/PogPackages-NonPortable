# Pog repository for non-portable packages

This is a non-default package repository for the [Pog package manager](https://github.com/MatejKafka/Pog), containing non-portable packages that attempt to store data in `AppData` and other non-encapsulated folders. The goal of this repository is to make installing and updating these packages easier, even if some Pog features are not supported.

To use this repository, call the following command, which changes the configured repository **in the current PowerShell session**:
```powershell
Set-PogRepository "https://matejkafka.github.io/PogPackages-NonPortable/"

# install a package from the repository
pog ...
```