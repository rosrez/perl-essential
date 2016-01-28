#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $x = 24;
    # the block inside {} will run if the condition is NOT TRUE.
    unless ($x > 25 and $x < 100) {
        print("number is out of range!\n") ;
    }

    # unless is mostly used in a postfix notation
    # As with 'if', parentheses can be omitted for
    # the condition in the postfix form.
    print("number is out of range!\n") unless $x > 25 and $x < 100;
}
