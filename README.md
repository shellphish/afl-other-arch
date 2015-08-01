This is a simple patch to AFL to make other-arch (non-x86 based) support easy. Just
run `./build.sh <arch>` to get started, where `<arch>` can be one of:

```
   aarch64 alpha arm armeb cris i386 m68k microblaze microblazeel 
   mips mips64 mips64el mipsel mipsn32 mipsn32el or32 ppc ppc64 
   ppc64abi32 ppc64le s390x sh4 sh4eb sparc sparc32plus sparc64 unicore32 
   x86_64
```

This will compile AFL with qemu support for the architecture requested. 

Once building is completed, you'll need to set some environment variable before you can
begin fuzzing.

Set `QEMU_LD_PREFIX` to a path containing the directory `lib` which itself
contains the libraries shared objects required by the binary
```
export QEMU_LD_PREFIX=.
```

Set `AFL_PATH` to the directory containing the afl installation, in this case it with
be the directory which you cloned this repo into
```
export AFL_PATH=afl-other-arch/
```

Happy other-arch fuzzing!
```
afl-other-arch/afl-fuzz -m 8G -Q -i testcases -o output -- ./deepblue
```
