clang --target=x86_64-pc-windows-msvc \
      -fuse-ld=lld \
      -isystem ./winsdk/sdk/include/ucrt \
      -isystem ./winsdk/sdk/include/um \
      -isystem ./winsdk/sdk/include/shared \
      -isystem ./winsdk/crt/include \
      -L./winsdk/crt/lib/x86_64 \
      -L./winsdk/sdk/lib/ucrt/x86_64 \
      -L./winsdk/sdk/lib/um/x86_64 \
      -o hello.exe main.c

clang-cl --target=x86_64-pc-windows-msvc \
      /I ./winsdk/sdk/include/ucrt \
      /I ./winsdk/sdk/include/um \
      /I ./winsdk/sdk/include/shared \
      /I ./winsdk/crt/include \
      main.c \
      /Fehello.exe \
      /link \
      /libpath:./winsdk/crt/lib/x86_64 \
      /libpath:./winsdk/sdk/lib/ucrt/x86_64 \
      /libpath:./winsdk/sdk/lib/um/x86_64

clang-cl --target=x86_64-pc-windows-msvc \
      -fuse-ld=lld \
      -Wno-ignored-attributes \
      /I ./winsdk/sdk/include/ucrt \
      /I ./winsdk/sdk/include/um \
      /I ./winsdk/sdk/include/shared \
      /I ./winsdk/crt/include \
      main.c \
      /Fehello.exe \
      /link \
      /libpath:./winsdk/crt/lib/x86_64 \
      /libpath:./winsdk/sdk/lib/ucrt/x86_64 \
      /libpath:./winsdk/sdk/lib/um/x86_64