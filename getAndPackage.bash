curl -L 'https://www.nitrc.org/frs/download.php/5996/ROBEXv12.source.all_platforms.zip//?i_agree=1&download_now=1' > robex-1.12.zip
unzip robex-1.12.zip
mv ROBEX/* robex_1.12/
tar cJvf robex-1.12.orig.tar.xv --exclude="*/debian"  robex_1.12/ 

cd robex_1.12/
dpkg-buildpackage -rfakeroot -us -uc -B
