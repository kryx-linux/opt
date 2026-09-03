opt/rust README.md
==================

## FAQ

### rust fails to compile
This may happen due to a number of various reasons, but rust usually depends
on an updated llvm toolchain, so please check if this is updated.

If you have rust installed and are trying to update it, try to remove rust
before trying again. System `/usr/bin/rustc` is used if available, but if
 - it's broken (e.g. check `revdep -vvv rust`)
 - it's too out of date (`major version - 1`)
 - ..?
it will fail to compile.

Please see [opt issue #59](https://git.crux.nu/ports/opt/issues/59) for an
example how this loos.
