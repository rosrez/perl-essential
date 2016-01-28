#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my @list = ("one", "two", "three", "four", "five");
    my $i;

    for ($i = 0; $list[$i]; $i++) {
        print("[$i]: $list[$i]\n");
    }
}
