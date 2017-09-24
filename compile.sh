#filename: compile.sh
#adjust path to source code
cd /root
 
PKG_CONFIG_PATH=/usr/lib/pkgconfig:${PKG_CONFIG_PATH}
export PKG_CONFIG_PATH
 
#adjust name of output file and code file
g++ $(pkg-config --cflags --libs opencv) -lm -o test opencv-grayscale.cpp
