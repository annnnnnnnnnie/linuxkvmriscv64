Usage: first rebuild, then boot

br_output has two fold usage: Firstly, when developing on icvm, br_output will contain the build root archifects that are later used in the rootfs. Secondly, on AWS firesim manager, the br_output will only get files from s3 buckets and we can point workload.json to this location to run the simulation.
