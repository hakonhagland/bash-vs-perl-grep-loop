# Comparison of execution time for extracting syllables in Bash and Perl
(See https://stackoverflow.com/q/73863748/2173773 for more
information)

Tests were done on Dell precision 3570 laptop with Ubuntu 22.04, 12
core 12th Gen Intel(R) Core(TM) i5-1235U cpu.

## Test case 1 : Perl read whole dict into memory
Original version of perl script, see: https://stackoverflow.com/q/73863748/2173773
```
$ time p.pl

real	0m13,080s
user	0m13,012s
sys	0m0,060s

```

## Test case 2 : Bash using grep and wc
Original version of Bash script, see: https://stackoverflow.com/q/73863748/2173773
```
$ time t.sh

real	0m3,498s
user	0m4,060s
sys	0m0,954s

```

## Test case 3 : Perl reading line by line, and saving results in a hash
Credit to @tripleee, see https://stackoverflow.com/a/73867740/2173773
```
$ time t2.sh

real	0m8,159s
user	0m8,025s
sys	0m0,137s

```

## Test case 4: Same as case \#1 except for using index instead of regex
Credit to @zdim, see https://stackoverflow.com/a/73864588/2173773.

```
$ time p3.pl

real	0m8,787s
user	0m8,765s
sys	0m0,021s

```
