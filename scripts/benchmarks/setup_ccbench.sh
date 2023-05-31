echo "setup ccbench"

mkdir -p $PWD/overlay/root/mem_benches/ccbench
dest=$PWD/overlay/root/mem_benches/ccbench/

cp $PWD/ccbench/strided/strided $dest
cp $PWD/ccbench/strided/run_strided_*.sh $dest

cp $PWD/ccbench/caches/caches $dest
cp $PWD/ccbench/caches/run_caches_*.sh $dest
