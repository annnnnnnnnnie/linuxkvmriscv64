BR=~/buildroot-2023.02

echo "setup overlay"

cp $PWD/kvmtool/lkvm-static $PWD/overlay/root/
cp $PWD/br_output/Image $PWD/overlay/root/

cp $BR/.config ./overlay/root/br_config

cp $PWD/scripts/kvmtool/start_guest.sh $PWD/overlay/root/
cp $PWD/scripts/kvmtool/run_host.sh $PWD/overlay/root/
cp $PWD/scripts/kvmtool/run_guest_sandbox.sh $PWD/overlay/root/
cp $PWD/scripts/misc/firesim_test_trigger.sh $PWD/overlay/root/
