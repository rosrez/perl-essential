#!/usr/bin/perl

# These will give a warning if my is omitted.
use strict;
use warnings;

main(@ARGV);

sub main
{
    # stores environment variables in hash
    my %hash = %ENV;

    # Iterating over keys:
    # getting key-value pairs from the hash
    # The disadvantage is that we don't have control over
    # the order of keys.
    while (my ($k, $v) = each %hash) {
        print("key: $k -- value: $v\n");
    }
    print("=============  SORTED KEYS =============\n");
    foreach my $k (sort keys %hash) {
        my $v = $hash{$k};
        print("key: $k --- value: $v\n");
    }
}
