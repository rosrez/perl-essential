#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, 'lines.txt');

    # This loop will read the file and skip lines containing 3.
    # The loop will terminate if it encounters a line with 6 in it.
    while (my $line = <FH>) {
        # next <==> continue in C
        next if $line =~ /3/;
        # last <==> break in C
        last if $line =~ /6/;
        print $line;
    }
    close FH;
}
