# how to setup environment variable
export MYVARNAME=VAL
echo $MYVARNAME

set -o allexport
source conf-file
set +o allexport