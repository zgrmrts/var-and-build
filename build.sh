cp ~/.gitconfig gitconfig &&
docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) -t android-build . &&
rm gitconfig &&
echo done


