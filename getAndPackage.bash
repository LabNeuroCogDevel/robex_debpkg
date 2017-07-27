curl -L 'https://www.nitrc.org/frs/download.php/5996/ROBEXv12.source.all_platforms.zip//?i_agree=1&download_now=1' | unzip 
mv ROBEX/* robex_1.12/
cd robex_1.12/
dpkg-buildpackage -rfakeroot -us -uc -B
