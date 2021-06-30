#! /bin/bash
set -x
ROOT_ANDROID_DIR="${PWD}/../var_imx-p9.0.0_2.3.4"
mkdir -p "${ROOT_ANDROID_DIR}" &&
cd "${ROOT_ANDROID_DIR}" &&
curl -o ~/Downloads/imx-p9.0.0_2.3.4.tar.gz ftp://customerv:Variscite1@ftp.variscite.com/VAR-SOM-MX8X/Software/Android/Android_iMX8_P900_200/imx-p9.0.0_2.3.4.tar.gz &&
tar xvf ~/Downloads/imx-p9.0.0_2.3.4.tar.gz &&
source imx-p9.0.0_2.3.4/imx_android_setup.sh &&
mkdir -p "${ROOT_ANDROID_DIR}/android_build/vendor/variscite/" &&
cd "${ROOT_ANDROID_DIR}/android_build/vendor/variscite/" &&
git clone https://github.com/varigit/uboot-imx.git -b imx_v2018.03_4.14.98_2.3.0_var01 &&
git clone https://github.com/varigit/linux-imx kernel_imx -b p9.0.0_2.3.4-ga_var01 &&
cd "${ROOT_ANDROID_DIR}/android_build/device" &&
git clone https://github.com/varigit/MX6x-android.git -b p9.0.0_2.3.4-ga-var01 variscite &&
variscite/scripts/install.sh &&
echo "done"

