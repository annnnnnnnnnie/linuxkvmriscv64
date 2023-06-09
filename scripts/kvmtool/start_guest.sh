echo "Inserting kvm.ko"
insmod /root/kvm.ko

echo "Starting guest"

/root/lkvm-static run -m 1G -c1 --console serial -p "console=ttyS0 earlycon" -k /root/Image
