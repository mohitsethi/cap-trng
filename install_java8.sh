

if [ -f /etc/debian_version ]; then
    echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' | tee -a /etc/apt/sources.list.d/webupd8team-java.list
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
    sudo apt-get update -y
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
    sudo apt-get update -y
    sudo apt-get install oracle-java8-installer -y
elif [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
fi
# fi
