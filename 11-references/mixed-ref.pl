#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

# This script illustrates mixing arrays and hashes in a complex data structure
# which is accessed via an anonymous reference.
# Here, we start out with a non-empty anonymous array reference; the array is
# constructed out of (anonymous) hash objects.
# A common programming pattern in Perl is to declare an empty array 
# and push hash objects onto it.

sub main
{
    # The square bracket syntax is used for constructing an anonymous array reference
    my $artists = [
        {
            name => "Jimi Hendrix",
            instrument => "Guitar",
            genre => "Rock"
        },
        {
            name => "Miles Davis",
            instrument => "Trumpet",
            genre => "Jazz",
        },
        {
            name => "Ella Fitzgerald",
            instrument => "Vocal",
            genre => "Jazz"
        }
    ];

    # We can add another hash to the array dynamically: this mimics the C's array of structures.
    push @$artists, { name => "Yoyo Ma", instrument => "Cello", genre => "Classical" };

    foreach my $artist ( @$artists ) {
        # @$artists - dereference an array reference:
        # iteration over the array produces a hash in the $artist variable,
        # so we can now accessed individual values by keys
        print("$artist->{name}: $artist->{instrument}, $artist->{genre}\n");
    }
}
