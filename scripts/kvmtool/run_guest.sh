echo "Inserting kvm.ko"
insmod kvm.ko

echo "Starting guest"
./lkvm-static run -m 1024 -c1 --console serial -p "console=ttyS0 earlycon" \
    -k ./Image \
    --debug