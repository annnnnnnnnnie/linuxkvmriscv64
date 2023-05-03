QEMU=/home/tp1119/qemu/build/qemu-system-riscv64

$QEMU -nographic -bios none -smp 4 -machine virt -m 2G \
    -kernel firemarshal/linuxkvm.bin \
    -object rng-random,filename=/dev/urandom,id=rng0 \
    -device virtio-rng-device,rng=rng0 -device virtio-net-device,netdev=usernet \
    -netdev user,id=usernet,hostfwd=tcp::54778-:22 \
    -device virtio-blk-device,drive=hd0 \
    -drive file=firemarshal/linuxkvm.img,format=raw,id=hd0