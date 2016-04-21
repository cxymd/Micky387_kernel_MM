#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/micky387/android/kernel/Toolchain/bin/arm-cortex_a15-linux-gnueabihf-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=micky387_defconfig empty_defconfig
make -j5 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
