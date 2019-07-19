Packaging https://www.nitrc.org/projects/robex for debian
> Robust Brain Extraction (ROBEX)
> ROBEX is an automatic whole-brain extraction tool for T1-weighted MRI data (commonly known as skull stripping).

See `getAndPackage.bash` to download and extract source as well as start packaging

## Done
 1. runs cmake and compiles ( via `override_dh_auto_configure` in `robex_1.12/debian/rules`)
 1. installs dat, `ref_vol`, binary, and bash script to `/user/share/rodex` (`robex_1.12/debian/install`)
 2. links `runROBEX.sh` to `/usr/bin/` (`robex_1.12/debian/robex.links`)

## Todo:
 1. package linting

## cpack

Maybe CMake can make packaging automatic with a change to `CMakeLists.txt`

```
SET(CPACK_GENERATOR "DEB")
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Some One")
INCLUDE(CPack)
```

This makes `RobustStrip-0.1.1-Linux.deb` which does not include needed `dat` or `ref_vol` data directories.
