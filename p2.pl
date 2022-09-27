#! /usr/bin/env perl

use feature qw(say);
use strict;
use warnings;
use experimental qw(declared_refs refaliasing signatures);

{
    my \@syllables = read_syllables();
    my %syllables;
    while (my $line = <>) {
        chomp $line;
        for my $syllable (@syllables) {
            $syllables{$syllable}++ if index($line, $syllable) != -1;
        }
        #say "${syllable}: ${num_matches}";
    }
}

sub read_syllables() {
    my $fn = 'syllables.txt';
    return read_file($fn);
}

sub read_file( $fn ) {
    open ( my $fh, '<', $fn ) or die "Could not open file '$fn': $!";
    chomp(my @lines = <$fh>);
    close $fh;
    return \@lines;
}
