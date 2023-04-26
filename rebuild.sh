echo "setup_overlay"
sh ./setup_overlay.sh
echo "rebuild"
cd ~/buildroot-2023.02/
pwd
make -j4
cd -

sh get_br_output.sh
cp ./br_output/kvm.ko ./overlay/root/

echo "rebuild with br archifects"
cd ~/buildroot-2023.02/
pwd
make -j4
cd -

echo "rebuild complete"
sh get_br_output.sh
