# Benchmarks of fast-libdft64.

SPEC CPU 2006 benchmarks as well as an nginx server for evaluating the fast-libdft64.

## Build SPEC CPU 2006 benchmarks

- Put our private *sos_spec06.tar.xz* in this directory.
- `tar -xf sos_spec06.tar.xz`
- `cd spec2006`
- `./install.sh` and type `yes` to confirm the installation.
- `cd ..`
- `cp libdft64.cfg spec2006/config/`
- `./batch-make-on-spec.sh`

## Build Nginx

- `cd nginx`
- `./build-nginx.sh`

