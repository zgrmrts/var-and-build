sudo `which fastboot` flash dtbo_a ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/dtbo-imx8qm-var-som-lvds.img
sudo `which fastboot` flash dtbo_b ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/dtbo-imx8qm-var-som-lvds.img
sudo `which fastboot` flash boot_a ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/boot.img
sudo `which fastboot` flash boot_b ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/boot.img
sudo `which fastboot` flash super ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/super.img
sudo `which fastboot` flash vbmeta_a ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/vbmeta-imx8qm-var-som-lvds.img --disable-verity
sudo `which fastboot` flash vbmeta_b ../var_imx-android-10.0.0_2.5.0/android_build/out/target/product/som_mx8q/vbmeta-imx8qm-var-som-lvds.img --disable-verity
sudo `which fastboot` reboot
