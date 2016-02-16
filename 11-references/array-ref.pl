#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    # The square bracket syntax is used for constructing an anonymous array reference
    my $ref = [ 
        "This is STRING 1",
        42,
        "Another string",
        "One more value"
    ];

    # Note that the array above is anonymous, we only store a reference to it.
    # We could have done it differently, i.e. first define a list explicitly
    # And then create a reference to it.
    my @list = ( 
        "This is STRING 1",
        42,
        "Another string",
        "One more value"
    );
    my $ref2 = \@list;

    # Outputs: Reference is ARRAY(0x2229d48)
    print("Reference is $ref\n");

    # @$ref to dereference the array/list as a whole
    print("The contents of the referenced array: ".join(':', @$ref)."\n");  

    # we access individual elements with the ->[] operator
    print("Subscript 2 contains: $ref->[2]\n");
}
