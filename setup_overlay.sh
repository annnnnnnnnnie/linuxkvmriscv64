BR=~/buildroot-2023.02

cd ./kvmtool
echo "ARCH: $ARCH"
make lkvm-static
cd -

cp ./kvmtool/lkvm-static ./overlay/root/
cp ./br_output/Image ./overlay/root/

cp $BR/.config ./overlay/root/br_config

cp ./run_guest.sh ./overlay/root/

sh setup_benchmarks.sh
