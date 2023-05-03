echo "setup_overlay"
sh ./setup_overlay.sh

echo "rebuild"
cd ~/buildroot-2023.02/
make -j4 linux-rebuild
cd -

sh get_br_output.sh
cp ./br_output/kvm.ko ./overlay/root/

echo "rebuild with br artifact"
cd ~/buildroot-2023.02/
make -j4
cd -

echo "rebuild complete"
sh get_br_output.sh
