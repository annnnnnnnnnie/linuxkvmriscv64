echo "setup benchmarks"
echo "pwd="$PWD

mkdir -p $PWD/overlay/root/mem_benches/

sh $PWD/scripts/benchmarks/setup_memlatency.sh
sh $PWD/scripts/benchmarks/setup_ccbench.sh
