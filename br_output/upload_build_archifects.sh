BASEDIR=$(dirname "$0")

BUCKET=buildroot-build-results

echo "uploading build archifects to s3 bucket"
TARGETS="Image kvm.ko rootfs.ext4"
for target in $TARGETS
do
    aws s3api put-object --bucket $BUCKET --key $target --body $BASEDIR/$target
done