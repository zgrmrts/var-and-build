cd ~/var_imx-android-10.0.0_2.5.0/android_build &&
source build/envsetup.sh &&
lunch som_mx8qx-userdebug &&
./imx-make.sh -j4 2>&1 | tee build1-1.log &&
echo done

