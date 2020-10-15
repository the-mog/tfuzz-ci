set -xe

## build fuzzer
#cargo fuzz run mmr_push_bytes -- -runs=0

wget -q -O fuzzit https://github.com/fuzzitdev/fuzzit/releases/download/v2.4.72/fuzzit_Linux_x86_64
chmod a+x fuzzit

if [ $1 == "fuzzing" ]; then
    ./fuzzit create job mmr_push_bytes ./targets/mmr_push_bytes
else
    ./fuzzit create job --type local-regression mmr_push_bytes ./targets/mmr_push_bytes --additional-corpus ./corpus-mmr_push_bytes.tar.gz
fi
