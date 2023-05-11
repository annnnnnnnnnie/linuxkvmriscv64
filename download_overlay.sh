target=membenches.zip

BASEDIR=$(dirname "$0")

BUCKET=membenches-build

echo "downloading ${target} from s3 bucket"

aws s3api get-object --bucket $BUCKET --key $target $BASEDIR/$target
