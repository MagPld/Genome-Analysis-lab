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




#  Discover the job ID to run, from either a grid environment variable and a
#  command line offset, or directly from the command line.
#
if [ x$CANU_LOCAL_JOB_ID = x -o x$CANU_LOCAL_JOB_ID = xundefined -o x$CANU_LOCAL_JOB_ID = x0 ]; then
  baseid=$1
  offset=0
else
  baseid=$CANU_LOCAL_JOB_ID
  offset=$1
fi
if [ x$offset = x ]; then
  offset=0
fi
if [ x$baseid = x ]; then
  echo Error: I need CANU_LOCAL_JOB_ID set, or a job index on the command line.
  exit
fi
jobid=`expr -- $baseid + $offset`
if [ x$baseid = x0 ]; then
  echo Error: jobid 0 is invalid\; I need CANU_LOCAL_JOB_ID set, or a job index on the command line.
  exit
fi
if [ x$CANU_LOCAL_JOB_ID = x ]; then
  echo Running job $jobid based on command line options.
else
  echo Running job $jobid based on CANU_LOCAL_JOB_ID=$CANU_LOCAL_JOB_ID and offset=$offset.
fi

if [ $jobid -eq 1 ] ; then
  blk="000001"
  slf=""
  qry="000001"
fi

if [ $jobid -eq 2 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000002"
fi

if [ $jobid -eq 3 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000003"
fi

if [ $jobid -eq 4 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000004"
fi

if [ $jobid -eq 5 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000005"
fi

if [ $jobid -eq 6 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000006"
fi

if [ $jobid -eq 7 ] ; then
  blk="000001"
  slf="--no-self"
  qry="000007"
fi

if [ $jobid -eq 8 ] ; then
  blk="000002"
  slf=""
  qry="000008"
fi

if [ $jobid -eq 9 ] ; then
  blk="000002"
  slf="--no-self"
  qry="000009"
fi

if [ $jobid -eq 10 ] ; then
  blk="000002"
  slf="--no-self"
  qry="000010"
fi

if [ $jobid -eq 11 ] ; then
  blk="000002"
  slf="--no-self"
  qry="000011"
fi

if [ $jobid -eq 12 ] ; then
  blk="000002"
  slf="--no-self"
  qry="000012"
fi

if [ $jobid -eq 13 ] ; then
  blk="000002"
  slf="--no-self"
  qry="000013"
fi

if [ $jobid -eq 14 ] ; then
  blk="000003"
  slf=""
  qry="000014"
fi

if [ $jobid -eq 15 ] ; then
  blk="000003"
  slf="--no-self"
  qry="000015"
fi

if [ $jobid -eq 16 ] ; then
  blk="000003"
  slf="--no-self"
  qry="000016"
fi

if [ $jobid -eq 17 ] ; then
  blk="000003"
  slf="--no-self"
  qry="000017"
fi

if [ $jobid -eq 18 ] ; then
  blk="000003"
  slf="--no-self"
  qry="000018"
fi

if [ $jobid -eq 19 ] ; then
  blk="000003"
  slf="--no-self"
  qry="000019"
fi

if [ $jobid -eq 20 ] ; then
  blk="000004"
  slf=""
  qry="000020"
fi

if [ $jobid -eq 21 ] ; then
  blk="000004"
  slf="--no-self"
  qry="000021"
fi

if [ $jobid -eq 22 ] ; then
  blk="000004"
  slf="--no-self"
  qry="000022"
fi

if [ $jobid -eq 23 ] ; then
  blk="000004"
  slf="--no-self"
  qry="000023"
fi

if [ $jobid -eq 24 ] ; then
  blk="000004"
  slf="--no-self"
  qry="000024"
fi

if [ $jobid -eq 25 ] ; then
  blk="000005"
  slf=""
  qry="000025"
fi

if [ $jobid -eq 26 ] ; then
  blk="000005"
  slf="--no-self"
  qry="000026"
fi

if [ $jobid -eq 27 ] ; then
  blk="000005"
  slf="--no-self"
  qry="000027"
fi

if [ $jobid -eq 28 ] ; then
  blk="000005"
  slf="--no-self"
  qry="000028"
fi

if [ $jobid -eq 29 ] ; then
  blk="000005"
  slf="--no-self"
  qry="000029"
fi

if [ $jobid -eq 30 ] ; then
  blk="000006"
  slf=""
  qry="000030"
fi

if [ $jobid -eq 31 ] ; then
  blk="000006"
  slf="--no-self"
  qry="000031"
fi

if [ $jobid -eq 32 ] ; then
  blk="000006"
  slf="--no-self"
  qry="000032"
fi

if [ $jobid -eq 33 ] ; then
  blk="000006"
  slf="--no-self"
  qry="000033"
fi

if [ $jobid -eq 34 ] ; then
  blk="000007"
  slf=""
  qry="000034"
fi

if [ $jobid -eq 35 ] ; then
  blk="000007"
  slf="--no-self"
  qry="000035"
fi

if [ $jobid -eq 36 ] ; then
  blk="000007"
  slf="--no-self"
  qry="000036"
fi

if [ $jobid -eq 37 ] ; then
  blk="000007"
  slf="--no-self"
  qry="000037"
fi

if [ $jobid -eq 38 ] ; then
  blk="000008"
  slf=""
  qry="000038"
fi

if [ $jobid -eq 39 ] ; then
  blk="000008"
  slf="--no-self"
  qry="000039"
fi

if [ $jobid -eq 40 ] ; then
  blk="000008"
  slf="--no-self"
  qry="000040"
fi

if [ $jobid -eq 41 ] ; then
  blk="000009"
  slf=""
  qry="000041"
fi

if [ $jobid -eq 42 ] ; then
  blk="000009"
  slf="--no-self"
  qry="000042"
fi

if [ $jobid -eq 43 ] ; then
  blk="000009"
  slf="--no-self"
  qry="000043"
fi

if [ $jobid -eq 44 ] ; then
  blk="000010"
  slf=""
  qry="000044"
fi

if [ $jobid -eq 45 ] ; then
  blk="000010"
  slf="--no-self"
  qry="000045"
fi

if [ $jobid -eq 46 ] ; then
  blk="000011"
  slf=""
  qry="000046"
fi

if [ $jobid -eq 47 ] ; then
  blk="000011"
  slf="--no-self"
  qry="000047"
fi

if [ $jobid -eq 48 ] ; then
  blk="000012"
  slf=""
  qry="000048"
fi

if [ $jobid -eq 49 ] ; then
  blk="000013"
  slf=""
  qry="000049"
fi

if [ $jobid -eq 50 ] ; then
  blk="000014"
  slf=""
  qry="000050"
fi


if [ x$qry = x ]; then
  echo Error: Job index out of range.
  exit 1
fi

if [ -e ./results/$qry.ovb ]; then
  echo Job previously completed successfully.
  exit
fi


if [ -e ./queries.tar -a ! -d ./queries ] ; then
  tar -xf ./queries.tar
fi


if [ ! -d ./results ]; then  mkdir -p ./results;  fi
if [ ! -d ./blocks  ]; then  mkdir -p ./blocks;   fi

for ii in `ls ./queries/$qry` ; do
  echo Fetch blocks/$ii
done

echo ""
echo Running block $blk in query $qry
echo ""

if [ ! -e ./results/$qry.mhap.ovb ] ; then
  #  Make a fifo so we can check return status on both
  #  mhap and mhapConvert, and still pipe results so we
  #  stop filling up disks.
  rm -f  $qry-pipe
  mkfifo $qry-pipe

  #  Start up the consumer.
  $bin/mhapConvert \
    -S ../../genome_assembly.seqStore \
    -o ./results/$qry.mhap.ovb.WORKING \
    -minlength 500 \
    $qry-pipe \
  && \
  touch ./results/$qry.mcvt.success &

  #  Start up the producer.
  /sw/comp/java/x86_64/sun_jdk1.8.0_151/bin/java -d64 -XX:ParallelGCThreads=2 -server -Xms5530m -Xmx5530m \
    -jar  $bin/../share/java/classes/mhap-2.1.3.jar  \
    --repeat-weight 0.9 --repeat-idf-scale 10 -k 16 \
    --store-full-id \
    --num-hashes 256 \
    --num-min-matches 3 \
    --threshold 0.8 \
    --filter-threshold 0.0000001 \
    --ordered-sketch-size 1000 \
    --ordered-kmer-size 14 \
    --min-olap-length 500 \
    --num-threads 2 \
    -s  ./blocks/$blk.dat $slf  \
    -q  queries/$qry  \
  > $qry-pipe \
  && \
  touch ./results/$qry.mhap.success

  #  Wait for mhapConvert to finish.
  wait

  #  Now that they're done, check status.
  if [ -e ./results/$qry.mhap.success -a -e ./results/$qry.mcvt.success ] ; then
    mv ./results/$qry.mhap.ovb.WORKING ./results/$qry.mhap.ovb
    rm -f ./results/$qry.mhap.success
    rm -f ./results/$qry.mcvt.success
  fi

  #  And destroy the pipe.
  rm -f  $qry-pipe
fi

if [ -e ./results/$qry.mhap.ovb ] ; then
  mv -f ./results/$qry.mhap.ovb ./results/$qry.ovb
fi


exit 0
