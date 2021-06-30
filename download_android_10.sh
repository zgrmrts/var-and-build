#! /bin/bash
set -x
ROOT_ANDROID_DIR="${PWD}/../var_imx-android-10.0.0_2.5.0"
mkdir -p "${ROOT_ANDROID_DIR}" &&
cd "${ROOT_ANDROID_DIR}" &&
curl -o ~/Downloads/imx-android-10.0.0_2.5.0.tar.gz ftp://customerv:Variscite1@ftp.variscite.com/VAR-SOM-MX8X/Software/Android/Android_iMX8_Q1000_250/imx-android-10.0.0_2.5.0.tar.gz &&
tar xvf ~/Downloads/imx-android-10.0.0_2.5.0.tar.gz &&
source imx-android-10.0.0_2.5.0/imx_android_setup.sh &&
mkdir -p "${ROOT_ANDROID_DIR}/android_build/vendor/variscite/" &&
cd "${ROOT_ANDROID_DIR}/android_build/vendor/variscite/" &&
git clone https://github.com/varigit/uboot-imx.git -b imx_v2020.04_5.4.24_2.1.0_var01 &&
git clone https://github.com/varigit/linux-imx kernel_imx -b android-10.0.0_2.5.0-var01 &&
cd "${ROOT_ANDROID_DIR}/android_build/device" &&
git clone https://github.com/varigit/MX6x-android.git -b android-10.0.0_2.5.0-var01 variscite &&
variscite/scripts/install.sh qx &&
echo "done"

