#! /bin/bash

testcase_root=$(pwd)
#echo $testcase_root

spec_root=${testcase_root}"/spec2006/"
#echo $spec_root

cd ${spec_root}
source shrc

cd config/

runspec --config libdft64.cfg --action build 400.perlbench 401.bzip2 403.gcc 429.mcf 433.milc 445.gobmk 456.hmmer 458.sjeng 462.libquantum 464.h264ref 470.lbm 482.sphinx3
