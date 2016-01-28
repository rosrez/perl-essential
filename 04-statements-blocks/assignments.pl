#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $var = 42;
    my @list = ('fourty-two', 42, 40 + 2);
    print("var is $var\n");
    print("list is ". join(",", @list) ."\n");
}
