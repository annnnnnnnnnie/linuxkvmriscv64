echo "setup simple_mem_benchmark"
cd simple_mem_benchmark
sh build.sh
cd ..
cp --recursive ./simple_mem_benchmark/build/ ./overlay/root/mem_benches/simple_mem_benchmark/