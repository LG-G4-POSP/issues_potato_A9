#!/bin/bash
echo "ANDROID2468's build script for potato os"

# removing old builds
echo "deleting The out directory"
rm -rf out

# build setup
source build/envsetup.sh

# removing old build logs
echo "removing old build logs"
rm -f log_vs986_usu.txt
rm -f log_h815.txt
rm -f log_h815_usu.txt
rm -f log_h811_usu.txt
rm -f log_h812_usu.txt
rm -f log_h810_usu.txt

# vs986_usu
echo "starting build for vs986_usu" | tee -a log_vs986_usu.txt
breakfast potato_vs986_usu-userdebug | tee -a log_vs986_usu.txt
brunch potato_vs986_usu-userdebug | tee -a log_vs986_usu.txt
echo "md5 for venus.mbn" | tee -a log_vs986.txt
md5sum out/target/product/vs986_usu/system/etc/firmware/venus.mbn | tee -a log_vs986_usu.txt
echo "The md5sum should be 78e5cf520d0de4a413ef1cfa7bbbe713" | tee -a log_vs986_usu.txt

# h810_usu
echo "starting build for h810_usu" | tee -a log_h810_usu.txt
breakfast potato_h810_usu-userdebug | tee -a log_h810_usu.txt
brunch potato_h810_usu-userdebug | tee -a log_h810_usu.txt
echo "md5 for venus.mbn" | tee -a log_h810_usu.txt
md5sum out/target/product/h810_usu/system/etc/firmware/venus.mbn | tee -a log_h810_usu.txt
echo "The md5sum should be 78e5cf520d0de4a413ef1cfa7bbbe713" | tee -a log_h810_usu.txt

# h811_usu
echo "starting build for h811" | tee -a log_h811_usu.txt
breakfast potato_h811_usu-userdebug | tee -a log_h811_usu.txt
brunch potato_h811_usu-userdebug | tee -a log_h811_usu.txt
echo "md5 for venus.mbn" | tee -a log_h811_usu.txt
md5sum out/target/product/h811_usu/system/etc/firmware/venus.mbn | tee -a log_h811_usu.txt
echo "The md5sum should be 78e5cf520d0de4a413ef1cfa7bbbe713" | tee -a log_h811_usu.txt

# sleep for 30 min
echo "letting computer cool down for 30 mins"
sleep 30m

# h812_usu
echo "starting build for h812" | tee -a log_h812_usu.txt
breakfast potato_h812_usu-userdebug | tee -a log_h812_usu.txt
brunch potato_h812_usu-userdebug | tee -a log_h812_usu.txt
echo "md5 for venus.mbn" | tee -a log_h812_usu.txt
md5sum out/target/product/h812_usu/system/etc/firmware/venus.mbn | tee -a log_h812_usu.txt
echo "The md5sum should be 78e5cf520d0de4a413ef1cfa7bbbe713" | tee -a log_h812_usu.txt

# h815
echo "starting build for h815" | tee -a log_h815.txt
breakfast potato_h815-userdebug | tee -a log_h815.txt
brunch potato_h815-userdebug | tee -a log_h815.txt
echo "md5 for venus.mbn" | tee -a log_h815.txt
md5sum out/target/product/h815/system/etc/firmware/venus.mbn | tee -a log_h815.txt
echo "The md5 shuld be d1f6fe863643b1e8d1e597762474928c" | tee -a log_h815.txt

# h815_usu
echo "starting build for h815_usu" | tee -a log_h815_usu.txt
breakfast potato_h815_usu-userdebug | tee -a log_h815_usu.txt
brunch potato_h815_usu-userdebug | tee -a log_h815_usu.txt
echo "md5 for venus.mbn" | tee -a log_h815_usu.txt
md5sum out/target/product/h815_usu/system/etc/firmware/venus.mbn | tee -a log_h815_usu.txt
echo "The md5 shuld be d1f6fe863643b1e8d1e597762474928c" | tee -a log_h815_usu.txt

echo "Done!"
