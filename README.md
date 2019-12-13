# Genode Hello World with Goa

I'm tired of manually installing dependencies on all my machines and
keeping them up to date. This is what tooling is for.

This repository serves as an example for fetching Genode dependencies via Nix.

The actual packaging happens in my [genode-nix
repo](https://github.com/blitz/genode-nix). Check out `shell.nix` in
this repo as well.

## Building with nix-shell

Install [Nix](https://nixos.org/nix/).

```sh
~/src/hello % nix-shell
nix-shell:~/src/hello]$ goa run
download nfeske/api/base/2019-11-23.tar.xz
download nfeske/api/base/2019-11-23.tar.xz.sig
[...]
Genode 19.08-191-g951271a2b2 <local changes>
17592186044415 MiB RAM and 8997 caps assigned to init
[init -> hello] Hello

```

## Building with Lorri

Install [lorri](https://github.com/target/lorri). Then do nothing to
install dependencies, because they are automatically installed when
you enter the directory. (You may need to do `direnv allow` when asked
to.)

```sh
~/src % cd hello
direnv: loading .envrc
[...]
~/src/hello % goa run
download nfeske/api/base/2019-11-23.tar.xz
download nfeske/api/base/2019-11-23.tar.xz.sig
[...]
Genode 19.08-191-g951271a2b2 <local changes>
17592186044415 MiB RAM and 8997 caps assigned to init
[init -> hello] Hello
```

## Caching

There are pre-compiled binaries in my
[Cachix](https://github.com/cachix/cachix) repo: `cachix use blitz`