#/bin/sh

# install dependencies for building iproute2
apt update
apt upgrade -y
apt install -y bison flex

# clone latest iproute2
git clone https://github.com/segment-routing/iproute2.git /tmp/iproute2
cd /tmp/iproute2

# build!
make && make install
