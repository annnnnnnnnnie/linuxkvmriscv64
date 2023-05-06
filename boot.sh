QEMU=~/qemu/build/qemu-system-riscv64

BR_OUTPUT=./br_output/
$QEMU -nographic -machine virt \
    -m 2G \
    -kernel $BR_OUTPUT/Image -append "root=/dev/vda ro console=ttyS0" \
    -drive file=$BR_OUTPUT/rootfs.ext4,format=raw,id=hd0 \
    -device virtio-blk-device,drive=hd0
