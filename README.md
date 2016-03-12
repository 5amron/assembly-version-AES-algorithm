# assembly_version_AES_algorithm_nasm

this is assembly version of AES encryption algorithm (https://en.wikipedia.org/wiki/Advanced_Encryption_Standard)
functions encrypt and decrypt that call other assembly functions to encrypt and decrypt an instance plain text.
these functions themself are called from test_funcs.c to be tested but it's better to call them from source.c and use this code
as the main program. at last the result will be in t1.txt(automatically generated).
of course the assembly code of this popular algorithm is faster and can reduse the time.
nasm compiler is suitable for all assembly codes and they've been implemented under c calling convention standard.

codes have been tested and the .exe file is the result that works!

samanSadeghyan
samronsadeghyan@gmail.com
