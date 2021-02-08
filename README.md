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

