tar xvzf jdk-8u111-linux-x64.tar.gz
export JDKDIR=jdk1.8.0_111
echo $JDKDIR
sudo mkdir -p /opt/$JDKDIR
sudo mv $JDKDIR/* /opt/$JDKDIR/
sudo update-alternatives --install "/usr/bin/java" "java" "/opt/$JDKDIR/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/$JDKDIR/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/$JDKDIR/bin/javaws" 1
java -version
javac -version
