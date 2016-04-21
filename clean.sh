#!/bin/bash

rm -R output
export ARCH=arm
export CROSS_COMPILE=/home/micky387/android/kernel/Toolchain/bin/arm-cortex_a15-linux-gnueabihf-
make VARIANT_DEFCONFIG=micky387_defconfig empty_defconfig
make mrproper
