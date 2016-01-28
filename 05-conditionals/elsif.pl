#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    checkrange(-20);
    checkrange(-3);
    checkrange(0);
    checkrange(7);
    checkrange(33);
}

sub checkrange
{
    my $arg = shift;
    print("$arg is ");

    if ($arg < -10) {
        print("less than -10\n");
    } elsif ($arg < 0) {
        print("within [-10..0) range\n");
    } elsif ($arg == 0) {
        print("equal to 0\n");
    } elsif ($arg <= 10) {
        print("within (0..10] range\n");
    } else {
        print("greater than 10.\n")
    }
}
