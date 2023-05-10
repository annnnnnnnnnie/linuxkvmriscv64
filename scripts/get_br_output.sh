BR=~/buildroot-2023.02
LINUX=linux-6.1.14

echo "getting buildroot build artifacts "
echo "pwd="$PWD

DEST=$PWD/br_output/
cp $BR/output/images/Image $DEST
cp $BR/output/images/rootfs.ext4 $DEST
cp $BR/output/build/$LINUX/arch/riscv/kvm/kvm.ko $DEST
echo "buildroot artifacts copied"
