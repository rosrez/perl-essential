#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $var1 = "This is VALUE 1";
    my $var2 = "This is VALUE 2";
    my $ref = \$var1;       # The \$var1 syntax produces a reference (similar to & in C)
    print("Reference ".$ref."points to ".$$ref."\n"); # The $$ref syntax 'dereferences' a reference (similar to * in C)
    print("\n");

    # Have our reference point to another value
    $ref = \$var2;
    print(">> Now reference ".$ref." points to ".$$ref."\n");
    print("\n");

    # Copy a reference and make sure it points to the same value as the original
    print(">> Making a copy of a reference\n");
    my $copy = $ref;
    print("Copied reference ".$copy." points to ".$$copy."\n");
    print("\n");

    # Changing a value from underneath our references and making sure we now refer to the new value
    $var2 = "This is a NEW VALUE 2";
    print(">> Changing the value underneath references\n");
    print("Now reference ".$ref." points to ".$$ref."\n");
    print("Copied reference ".$copy." points to ".$$copy."\n");
    print("\n");
}
