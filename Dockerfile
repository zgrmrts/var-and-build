FROM ubuntu:18.04
ARG userid
ARG groupid
ARG username
RUN apt update -y
RUN apt upgrade -y
RUN groupadd -g $groupid $username
RUN useradd -m -u $userid -g $groupid $username
RUN echo $username >/root/username
RUN echo "export USER="$username >>/home/$username/.gitconfig
RUN apt-get -y install gnupg flex bison gperf build-essential zip gcc-multilib g++-multilib
RUN apt-get -y install libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libz-dev libssl-dev
RUN apt-get -y install ccache libgl1-mesa-dev libxml2-utils xsltproc unzip bc
RUN apt-get -y install uuid uuid-dev zlib1g-dev liblz-dev liblzo2-2 liblzo2-dev lzop git curl
RUN apt-get -y install u-boot-tools mtd-utils android-tools-fsutils device-tree-compiler gdisk m4
RUN apt-get -y install openjdk-8-jdk
RUN apt-get -y install cpio
RUN apt-get -y install vim
RUN apt-get -y install rsync
RUN apt-get -y install python3
COPY gitconfig /home/$username/.gitconfig
RUN chown $userid:$groupid /home/$username/.gitconfig
ENV HOME=/home/$username
ENV USER=$username
ENTRYPOINT chroot --userspec=$(cat /root/username):$(cat /root/username) / /bin/bash -i
COPY build_android_9.sh /build_android_9.sh
COPY build_android_10.sh /build_android_10.sh
