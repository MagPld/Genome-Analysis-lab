#!/bin/sh


#  Path to Canu.

bin="/sw/bioinfo/canu/2.2/rackham/bin"

#  Report paths.

echo ""
echo "Found perl:"
echo "  " `which perl`
echo "  " `perl --version | grep version`
echo ""
echo "Found java:"
echo "  " `which /sw/comp/java/x86_64/sun_jdk1.8.0_151/bin/java`
echo "  " `/sw/comp/java/x86_64/sun_jdk1.8.0_151/bin/java -showversion 2>&1 | head -n 1`
echo ""
echo "Found canu:"
echo "  " $bin/canu
echo "  " `$bin/canu -version`
echo ""


#  Environment for any object storage.

export CANU_OBJECT_STORE_CLIENT=
export CANU_OBJECT_STORE_CLIENT_UA=
export CANU_OBJECT_STORE_CLIENT_DA=
export CANU_OBJECT_STORE_NAMESPACE=
export CANU_OBJECT_STORE_PROJECT=



$bin/falconsense \
  -partition 6 1.033 64 10000 \
  -S ../../genome_assembly.seqStore \
  -C ../genome_assembly.corStore \
  -R ./genome_assembly.readsToCorrect \
  -t  2 \
  -cc 4 \
  -cl 1000 \
  -oi 0.75 \
  -ol 500 \
  -p ./correctReadsPartition.WORKING \
&& \
mv ./correctReadsPartition.WORKING.batches ./correctReadsPartition.batches \
&& \
exit 0

exit 1
