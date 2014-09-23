wget -q http://blackarch.org/keyring/blackarch-keyring.pkg.tar.xz{,.sig}
gpg --keyserver hkp://pgp.mit.edu --recv 4345771566D76038C7FEB43863EC0ADBEA87E4E3
gpg --keyserver-o no-auto-key-retrieve --with-f blackarch-keyring.pkg.tar.xz.sig
pacman-key --init
rm blackarch-keyring.pkg.tar.xz.sig
pacman --noc -U blackarch-keyring.pkg.tar.xz
