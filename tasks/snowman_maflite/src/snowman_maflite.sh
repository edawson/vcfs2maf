PID=$1
TID=$2
NID=$3
VCF_INDEL=$4  # Strelka indel format
export JULIA_LOAD_PATH="/opt/src"
#sed 's/EVDNC.INDEL.//g'  $VCF_INDEL | sed 's/NDISC=.;//g' |sed 's/TDISC=.;//g'  | sed -E 's/PONCOUNT=[[:digit:]]+;//g' | sed -E 's/SCTG=c_[0-9]+_[0-9]+_[0-9]+_[0-9]+;//g' | grep -v '##FORMAT' > $PID.A.vcf
julia /opt/src/vcf2txt.jl $VCF_INDEL  $PID.snowman.INDEL.tsv
julia /opt/src/snowman_maflite.jl $TID $NID  $PID.snowman.INDEL.tsv $PID.snowman_maflite.tsv


