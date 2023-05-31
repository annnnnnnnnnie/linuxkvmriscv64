BR=~/buildroot-2023.02
export PATH_TO_RISCV_TOOLCHAIN=~/riscv

export PATH=$PATH_TO_RISCV_TOOLCHAIN/bin:$PATH
export ARCH=riscv
export CROSS_COMPILE=riscv64-unknown-linux-gnu-

rm -rf overlay/
mkdir -p overlay/root/

sh ./scripts/setup_overlay.sh
sh ./scripts/benchmarks/setup_benchmarks.sh

echo "rebuild"
cd $BR
# make -j4 linux-rebuild
make -j4
cd -

sh ./scripts/get_br_output.sh
cp ./br_output/kvm.ko ./overlay/root/

echo "rebuild with br artifact"
cd $BR
make -j4
cd -

echo "rebuild complete"
sh ./scripts/get_br_output.sh
