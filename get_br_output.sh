echo "getting buildroot build archifects "
BR_OUT=/home/tp1119/buildroot-2023.02/output
DEST=./br_output/
cp $BR_OUT/images/Image $DEST
cp $BR_OUT/images/rootfs.ext4 $DEST
cp $BR_OUT/build/linux-6.1.14/arch/riscv/kvm/kvm.ko $DEST