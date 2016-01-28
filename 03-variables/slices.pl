#!/usr/bin/perl

# These will give a warning if my is omitted.
use strict;
use warnings;

main(@ARGV);

sub main
{
    # a slice operation returns an array, 
    # so we must refer to the result as @array[... list of indexes ...]

    # (1..10) - the range operator: produces a list of values
    my @array = (1..10);
    print("array (initial): ". join(":", @array) . "\n");
    print("slices\n");
    # we can point to individual items, combined in a single @array[i1, i2, i3] reference:
    print("[1, 4, 7]: " . join(":", @array[1,4,7]) . "\n");
    # we can use the range operator to subscript a slice:
    print("[0..2, 7]: " . join(":", @array[0..2,7]) . "\n");
    # the items need not be in order 
    print("[9, 7, 5]: " . join(":", @array[9, 7, 5]) . "\n");

}
