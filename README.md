# dr-quine

This project demonstrates three classic self-replicating (quine) programs, each implemented in a different language: C, C++, and x86-64 Assembly.

## Project Structure

```
dr-quine/
├── README.md
├── ASM/
│   ├── Colleen.s
│   ├── Grace.s
│   ├── Sully.s
│   └── Makefile
├── C/
│   ├── Colleen.c
│   ├── Grace.c
│   ├── Sully.c
│   └── Makefile
├── CPP/
│   ├── Colleen.cpp
│   ├── Grace.cpp
│   ├── Sully.cpp
│   └── Makefile
```

## Programs

- **Colleen**: Prints its own source code, including comments and a separate function.
- **Grace**: Generates its own source code in a separate file without declaring a main function, using macros and defines.
- **Sully**: Writes its source code to a new file, compiles it, and executes it, decrementing an integer value in the source with each execution.

Each program is implemented in:
- C (`C/`)
- C++ (`CPP/`)
- Assembly (`ASM/`)

## Build Instructions

Each language subdirectory contains its own `Makefile`. To build all versions in a language, run:

```sh
cd C && make
cd ../CPP && make
cd ../ASM && make
```

## Clean

To remove generated files and binaries:

```sh
make fclean
```
in the respective subdirectory.
