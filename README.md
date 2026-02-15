# Cross cpmpile example using LLVM

An example of croll compiling a windows app in Linux using `xwin` and `clang-cl`

## Install Tools:

### Install Xwin (needs rust)

Via cargo install xwin. Rest assured rust is used only for *downloading* and *building* xwin.
The project itseld using old-plain c

```
cargo install xwin --locked
xwin --accept-license splat --output ./winsdk
```

### Install LLVM clang compiler

LLVM clang compiler is a visual studio argument compartible compiler (using ubuntu/mint as installation distro):

```
sudo apt install clang llvm lld lldb

# Get highest clang version
highest_clang_version=$(ls /usr/bin/clang-* 2>/dev/null | grep -E 'clang-[0-9]+' | sed 's/.*clang-//' | sort -V | tail -1)
sudo ln -s /usr/bin/clang-${highest_clang_version} /usr/bin/clang-cl
```

### Install Ninja

```
sudo apt-get install ninja-build
```

## Compile

```
ninja
```
