#! /bin/sh

work_path=$(dirname $0)
cd ./${work_path}
nginx_root=$(pwd)

#echo $nginx_root

nginx_target_dir=$nginx_root"/bin"

nginx_src_dir=$nginx_root"/lib/nginx-1.16.0"
pcre_dir=$nginx_root"/lib/pcre-8.43"
zlib_dir=$nginx_root"/lib/zlib-1.2.11"

#echo $nginx_target_dir
#echo $nginx_src_dir

cd $nginx_src_dir

./configure --with-cc="gcc" --with-cc-opt="-O0 -mno-avx -fno-stack-protector" --with-pcre=$pcre_dir --with-pcre-opt="-g -O0 -mno-avx -fno-stack-protector" --with-zlib=$zlib_dir --with-zlib-opt="-g -O0 -mno-avx -fno-stack-protector"

make

mv $nginx_src_dir"/objs/nginx" $nginx_target_dir"/nginx_gcc"

objdump -d $nginx_target_dir"/nginx_gcc" > $nginx_target_dir"/nginx_gcc.asm"
