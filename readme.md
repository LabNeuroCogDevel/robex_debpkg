packageing https://www.nitrc.org/projects/robex for debian

to download and extract source and start packaging, see `getAndPackage.bash`

## Done
 1. run cmake and compile ( via `override_dh_auto_configure` in `robex_1.12/debian/rules`)
 1. installs dat, binary, and bash script to `/opt/rodex` (`robex_1.12/debian/install`)
 2. links `runROBEX.sh` to `/usr/bin/` (`robex_1.12/debian/robex.links`)

## TODO:
 1. set version
 2. get liscence info
 3. other package info


