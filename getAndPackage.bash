#!/usr/bin/env bash
msg() { echo "## [$(date +%FT%H:%M)] $@"; }

if [ ! -r robex_1.12/runROBEX.sh ]; then
  msg "getting robex source (zip) from nitric.org"
  curl -L 'https://www.nitrc.org/frs/download.php/5996/ROBEXv12.source.all_platforms.zip//?i_agree=1&download_now=1' > robex-1.12.zip
  unzip robex-1.12.zip
  mv ROBEX/* robex_1.12/
else
  msg "skipping zip extract"
fi

if [ ! -r robex-1.12.orig.tar.xz ]; then
  msg "making .orig.tar.xz"
  tar cJvf robex-1.12.orig.tar.xz --exclude="*/debian"  robex_1.12/ 
fi


msg "building and packaging (dkpg-buildpackage)"
cd robex_1.12/
dpkg-buildpackage -rfakeroot -us -uc -B

msg "finished"
