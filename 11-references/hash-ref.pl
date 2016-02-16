#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

# Note the hash declaration syntax, we can omit quotes around keys:
#
# name => "Jimi Hendrix"
#
# We can also omit quotes around keys when referencing 
# individual elements of a hash by key: 
#
# $ref->{song}

sub main
{
    # construct a hash
    my %hash = (
        name => "Jimi Hendrix",
        instrument => "Guitar",
        album => "Are You Experienced?"
    );
    # construct a reference to hash \%
    my $ref = \%hash;

    # this syntax (curly braces) creates an anonymous reference to a hash
    my $anon_ref = {
        name => "Ian Anderson",
        instrument => "Flute",
        album => "Aqualung"
    };

    # Outputs: Reference is HASH(0x2229d48)
    print("Reference is $ref\n");

    # Put a new entry into the hash
    $ref->{song} = "Purple Haze";

    # %$ref to dereference the hash as a whole
    # $ref->{$k} to access individual elements
    print("The contents of the referenced hash:\n");
    foreach my $k (sort keys %$ref) {
        my $v = $ref->{$k};
        print "$k: $v\n";
    }
}
