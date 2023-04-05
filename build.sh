#config=vendor/lineage_y2qdcmw_defconfig
#export PATH="/home/van/clang10/bin:/home/van/GCC_4.9/aarch64-linux-android-4.9/bin:/home/van/GCC_4.9/arm-linux-androideabi-4.9/bin:$PATH"

export ARCH=arm64
mkdir out

BUILD_CROSS_COMPILE=/home/van/GCC_4.9/aarch64-linux-android-4.9/bin/aarch64-linux-android-
KERNEL_LLVM_BIN=/home/van/clang10/bin/clang
CLANG_TRIPLE=aarch64-linux-gnu-

#export CROSS_COMPILE=aarch64-linux-android-
#export CROSS_COMPILE_ARM32=arm-linux-android-
#export CLANG_TRIPLE=aarch64-linux-gnu-

#make -j12 CC=clang O=out $config

# make -j12 CC=clang O=out

make -j12 -C $(pwd) O=out ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE REAL_CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE vendor/lineage_y2qdcmw_defconfig
make -j12 -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$BUILD_CROSS_COMPILE REAL_CC=$KERNEL_LLVM_BIN CLANG_TRIPLE=$CLANG_TRIPLE
