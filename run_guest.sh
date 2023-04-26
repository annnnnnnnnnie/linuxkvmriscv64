echo "Inserting kvm.ko"
insmod kvm.ko

echo "Starting guest"
./lkvm-static run -m 256 -c2 --console serial -p "console=ttyS0 earlycon" \
    -k /boot/Image \
    --debug