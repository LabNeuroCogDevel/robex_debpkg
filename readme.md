Packaging https://www.nitrc.org/projects/robex for debian

See `getAndPackage.bash` to download and extract source as well as start packaging

## Done
 1. runs cmake and compiles ( via `override_dh_auto_configure` in `robex_1.12/debian/rules`)
 1. installs dat, binary, and bash script to `/opt/rodex` (`robex_1.12/debian/install`)
 2. links `runROBEX.sh` to `/usr/bin/` (`robex_1.12/debian/robex.links`)

## TODO:
 1. set version
 2. get licence info
 3. other package info


