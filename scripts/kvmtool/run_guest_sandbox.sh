echo "Inserting kvm.ko"
insmod /root/kvm.ko

echo "Starting sandbox"

/root/lkvm-static sandbox -m 1G -c1 --console serial -p "console=ttyS0 earlycon" -k /root/Image -- sh $1
poweroff

# Example input for $1:
# /host/root/mem_benches/ccbench/run_caches_guest.sh
