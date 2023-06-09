echo "Inserting kvm.ko"
insmod /root/kvm.ko

cat /root/$1

echo "Starting in host"
sh /root/$1
poweroff

# Example input for $1:
# mem_benches/ccbench/run_caches_guest.sh
