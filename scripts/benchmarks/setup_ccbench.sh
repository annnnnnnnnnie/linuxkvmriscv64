echo "setup ccbench"
echo "pwd="$PWD

mkdir -p $PWD/overlay/root/mem_benches/ccbench
dest=$PWD/overlay/root/mem_benches/ccbench/

cp $PWD/ccbench/strided/strided $dest
cp $PWD/ccbench/strided/run_strided_guest.sh $dest
cp $PWD/ccbench/strided/run_strided_host.sh $dest

cp $PWD/ccbench/caches/caches $dest
cp $PWD/ccbench/caches/run_caches_host.sh $dest
cp $PWD/ccbench/caches/run_caches_guest_32.sh $dest
cp $PWD/ccbench/caches/run_caches_guest_64.sh $dest
cp $PWD/ccbench/caches/run_caches_guest_128.sh $dest
