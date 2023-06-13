echo "Inserting kvm.ko"
insmod /root/kvm.ko

echo "Starting guest"

/root/lkvm-static run -m 20G -c1 --console serial -p "console=ttyS0 earlycon" -k /root/Image
