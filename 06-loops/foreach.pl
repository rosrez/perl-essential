#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my @list = ("one", "two", "three", "four", "five");
    foreach my $s (@list) {
        print("$s\n");
    }
    print("----------\n");

    # We can refer to list items without the control variable;
    # we just use a specal built-in $_ variable to get consecutive values:
    foreach (@list) {
        print("$_\n");
    }
    print("----------\n");

    # We can use 'foreach' in the postfix notation:
    print("$_\n") foreach (@list);
}
