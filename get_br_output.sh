BR=~/buildroot-2023.02

echo "getting buildroot build artifacts "
DEST=./br_output/
cp $BR/output/images/Image $DEST
cp $BR/output/images/rootfs.ext4 $DEST
cp $BR/output/build/linux-6.2/arch/riscv/kvm/kvm.ko $DEST
