echo "setup ccbench"
echo "pwd="$PWD

mkdir -p $PWD/overlay/root/mem_benches/ccbench
cp $PWD/ccbench/strided/strided $PWD/overlay/root/mem_benches/ccbench/
cp $PWD/ccbench/strided/run_strided.sh $PWD/overlay/root/mem_benches/ccbench/