cp /home/tp1119/kvmtool/lkvm-static ./overlay/root/
cp /home/tp1119/buildroot-2023.02/output/build/linux-6.1.14/arch/riscv/kvm/kvm.ko ./overlay/root/
cp /home/tp1119/buildroot-2023.02/.config ./overlay/root/br_config

sh setup_benchmarks.sh