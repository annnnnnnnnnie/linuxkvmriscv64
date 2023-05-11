target=membenches.zip

rm -f $target
zip -r $target overlay/root/mem_benches 

BASEDIR=$(dirname "$0")

BUCKET=membenches-build

echo "uploading ${target} to s3 bucket"

aws s3api put-object --bucket $BUCKET --key $target --body $BASEDIR/$target
