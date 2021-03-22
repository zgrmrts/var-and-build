    ./download_android_9.sh
    ; veya
    ./download_android_10.sh

    sudo apt install docker.io
    sudo usermod -a -G docker ${USER}
    ; logout and login
    ./build.sh
    ; run.sh degistir
    ./run.sh
    ; containerin icinde :
    /build-android_9.sh
    ; veya
    /build-android_10.sh

    ; kurtarma sd kartindan /usr/bin/install_android calistirip android kurulur ve acilir.
    ; Settings => About Tablet => Build number
    ; Keep on tapping until you see a prompt that says "You are now a developer!"
    ; Settings => System => Advanced => Deveoper options => OEM unlocking
    adb reboot bootloader
    sudo fastboot oem unlock
    ; tekrar reboot sonrasi
    adb reboot bootloader
    ./flash_android_10.sh

