#! /usr/bin/env perl

use feature qw(say);
use strict;
use warnings;
use experimental qw(declared_refs refaliasing signatures);

{
    my $benchmark_repetitions = 100;
    for (1..$benchmark_repetitions) {
        my \@lines = read_dict();
        my \@syllables = read_syllables();
        for my $syllable (@syllables) {
            my $num_matches = () = grep { index($_,$syllable) != -1 } @lines;
            #say "${syllable}: ${num_matches}";
        }
    }
}

sub read_syllables() {
    my $fn = 'syllables.txt';
    return read_file($fn);
}

sub read_dict() {
    my $fn = '/usr/share/dict/american-english'; # A file with more than 100,000 words
    return read_file($fn);
}

sub read_file( $fn ) {
    open ( my $fh, '<', $fn ) or die "Could not open file '$fn': $!";
    chomp(my @lines = <$fh>);
    close $fh;
    return \@lines;
}
