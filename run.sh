docker run -it --rm \
    -v ${PWD}/../var_imx-p9.0.0_2.3.4:/home/${USER}/var_imx-p9.0.0_2.3.4 \
    -v ${PWD}/../var_imx-android-10.0.0_2.5.0:/home/${USER}/var_imx-android-10.0.0_2.5.0 \
    android-build

