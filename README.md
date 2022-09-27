# Comparison of excution time for extracting syllables in Bash and Perl

Tests were done on Dell precision 3570 laptop with Ubuntu 22.04, 12
core 12th Gen Intel(R) Core(TM) i5-1235U cpu.

## Test case 1 : Perl read whole dict into memory

```
$ time p.pl

real	0m13,080s
user	0m13,012s
sys	0m0,060s

```

## Test case 2 : Bash using grep and wc

```
$ time t.sh

real	0m3,498s
user	0m4,060s
sys	0m0,954s

```

## Test case 3 : Perl reading line by line, and saving results in a hash

```
$ time t2.sh

real	0m8,159s
user	0m8,025s
sys	0m0,137s

```
