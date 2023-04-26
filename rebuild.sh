echo "setup_overlay"
sh ./setup_overlay.sh
echo "rebuild"
cd ~/buildroot-2023.02/
pwd
make -j4