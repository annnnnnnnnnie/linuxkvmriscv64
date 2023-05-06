# OK
BR_OUT=/home/tp1119/buildroot-2023.02/output
QEMU=/home/tp1119/qemu/build/qemu-system-riscv64
$QEMU -nographic -machine virt \
    -m 2G \
    -kernel $BR_OUT/images/Image -append "root=/dev/vda ro console=ttyS0" \
    -drive file=$BR_OUT/images/rootfs.ext4,format=raw,id=hd0 \
    -device virtio-blk-device,drive=hd0
