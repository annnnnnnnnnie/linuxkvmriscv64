echo "Inserting kvm.ko"
insmod /root/kvm.ko

cat /root/$1
echo "Starting sandbox"
/root/lkvm-static sandbox -m 20G -c1 --console serial -p "console=ttyS0 earlycon" -k /root/Image -- sh /host/root/$1
poweroff

# Example input for $1:
# mem_benches/ccbench/run_caches_guest.sh
