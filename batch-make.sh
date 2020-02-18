#! /bin/sh

dirs=$(ls -l ${testcase_root} |awk '/^d/ {print $NF}')

while [ -n "$1" ]
do
  case "$1" in
  -s) 
     dirs=$(ls -d $2)
     shift
     ;;
  esac
  shift
done

#obtain the absolute path of root directory
work_path=$(dirname $0)
cd ./${work_path}
testcase_root=$(pwd)

#echo ${testcase_root}

for dir in $dirs
do

  if [ $dir != "nginx" ]
  then
    echo "\n\nCompiling ..."
    cd ${testcase_root}"/"${dir}"/src/"
    make clean
    make
    make sweep #for disk space reason
  fi
done

#build nginx:

cd ${testcase_root}"/nginx/"
./build-nginx.sh
