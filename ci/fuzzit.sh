set -xe

## build fuzzer
#cargo fuzz run mmr_push_bytes -- -runs=0

mkdir fuzztari
cd fuzztari
git clone https://github.com/tari-project/tari
git clone https://github.com/tari-project/tari_utilities
git clone https://github.com/tari-project/tari-crypto
git clone https://github.com/the-mog/tari-fuzzer
cd tari-fuzzer
cargo run build

