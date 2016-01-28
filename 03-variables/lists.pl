#!/usr/bin/perl

# These will give a warning if my is omitted.
use strict;
use warnings;

main(@ARGV);

sub main
{
    # @ - specifies an array or a list variable:
    my @array = (1, 2, 3, 4);
    print(join(":", @array),"\n");

    # the values in a list could be anything, i.e. we can insert a string alongside numbers
    my @array_str = (1, "two", 3, 4);
    print(join(":", @array_str), "\n");

    # Assigns one list to another
    my ($one, $two, $three, $four) = (1, 2, 3, 4);
    print("$one, $two, $three, $four\n");

    # Array subscripts $array[subscript]
    print("[0] = $array[0]\n");
    print("[1] = $array[1]\n");
    print("[2] = $array[2]\n");
    print("[3] = $array[3]\n");

    # Number of elements in an array...
    # Notice the string concatenation operator (dot .) that glues strings together
    print("there are " . scalar @array . " elements in the array\n");
}
