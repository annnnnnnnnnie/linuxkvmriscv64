cp /home/tp1119/kvmtool/lkvm-static ./overlay/root/

cp /home/tp1119/buildroot-2023.02/.config ./overlay/root/br_config

cp ./run_guest.sh ./overlay/root/

sh setup_benchmarks.sh