BR=~/buildroot-2023.02

echo "setup overlay"
echo "pwd="$PWD

cp $PWD/kvmtool/lkvm-static $PWD/overlay/root/
cp $PWD/br_output/Image $PWD/overlay/root/

cp $BR/.config ./overlay/root/br_config

cp $PWD/scripts/kvmtool/run_guest.sh $PWD/overlay/root/
