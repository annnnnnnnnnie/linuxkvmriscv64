cd ./kvmtool
make lkvm-static
cd -

cp ./kvmtool/lkvm-static ./overlay/root/
cp ./br_output/Image ./overlay/root/

cp /home/tp1119/buildroot-2023.02/.config ./overlay/root/br_config

cp ./run_guest.sh ./overlay/root/

sh setup_benchmarks.sh