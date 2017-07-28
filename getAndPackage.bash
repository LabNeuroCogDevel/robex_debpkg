#!/usr/bin/env bash
msg() { echo "## [$(date +%FT%H:%M)] $@"; }

msg "getting robex source (zip) from nitric.org"
curl -L 'https://www.nitrc.org/frs/download.php/5996/ROBEXv12.source.all_platforms.zip//?i_agree=1&download_now=1' > robex-1.12.zip
unzip robex-1.12.zip
mv ROBEX/* robex_1.12/

msg "making .orig.tar.xz"
tar cJvf robex-1.12.orig.tar.xz --exclude="*/debian"  robex_1.12/ 


msg "building and packaging (dkpg-buildpackage)"
cd robex_1.12/
dpkg-buildpackage -rfakeroot -us -uc -B

msg "finished"
