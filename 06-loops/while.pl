#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, 'lines.txt');
    # repeats until $line will become undef == false
    while (my $line = <FH>) {
        # this way of reading lines from a file also includes newlines
        print $line;
    }
    close FH;
}
