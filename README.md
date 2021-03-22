# Downloading, building and flashing AOSP on VAR-SOM-MX8

Following is confirmed to work for android 10.

    ./download_android_9.sh
    ; or
    ./download_android_10.sh

    ; if docker is not installed:
    sudo apt install docker.io
    sudo usermod -a -G docker ${USER}
    newgrp docker

    ; build and run container:
    ./build.sh
    ./run.sh
    ; in the container:
    /build-android_9.sh
    ; or
    /build-android_10.sh

    ; boot from rescure sd card, and run /usr/bin/install_android
    ; boot from mmc into android
    ; Settings => About Tablet => Build number
    ; Keep on tapping until you see a prompt that says "You are now a developer!"
    ; Settings => System => Advanced => Deveoper options => OEM unlocking
    adb reboot bootloader
    sudo fastboot oem unlock
    ; wait... after reboot
    adb reboot bootloader
    ./flash_android_10.sh

