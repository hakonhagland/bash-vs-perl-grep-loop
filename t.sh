#! /bin/bash
dict_fn='/usr/share/dict/american-english'
benchmark_repetitions=100
for i in `seq 1 $benchmark_repetitions` ; do
    readarray -t syllables < 'syllables.txt'
    for syllable in "${syllables[@]}" ; do
        matches=$(grep "$syllable" $dict_fn | wc -l)
        #echo "${syllable}: $matches"
    done
done
