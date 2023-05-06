BASEDIR=$(dirname "$0")

BUCKET=buildroot-build-results

echo "downloading build archifects from s3 bucket"
TARGETS="Image kvm.ko rootfs.ext4"
for target in $TARGETS
do
    aws s3api get-object --bucket $BUCKET --key $target $BASEDIR/$target
done
