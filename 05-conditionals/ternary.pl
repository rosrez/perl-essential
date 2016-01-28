#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $n = 24;
    # Ternary conditional operator:
    # (condition) ? val_if_true : val_if_false
    my $s = ( $n > 25 and $n < 100) ? "in range" : "out of range";
    print("number is " . $s . "\n");
}
