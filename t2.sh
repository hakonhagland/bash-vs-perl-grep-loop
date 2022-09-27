#! /bin/bash
dict_fn='/usr/share/dict/american-english'
benchmark_repetitions=100
for i in `seq 1 $benchmark_repetitions` ; do
    perl p2.pl < $dict_fn
done
