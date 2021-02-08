cd ~/var_imx-p9.0.0_2.3.4/android_build &&
source build/envsetup.sh &&
lunch som_mx8qx-eng &&
make -j4 2>&1 | tee build1-1.log &&
echo done

