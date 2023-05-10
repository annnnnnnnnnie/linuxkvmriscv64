echo "setup memlatency"
echo "pwd="$PWD

mkdir -p $PWD/overlay/root/mem_benches/memlatency
cp $PWD/memlatency/lat $PWD/overlay/root/mem_benches/memlatency/
cp $PWD/memlatency/run_lat.sh $PWD/overlay/root/mem_benches/memlatency/
