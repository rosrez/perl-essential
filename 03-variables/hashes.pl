#!/usr/bin/perl

# These will give a warning if my is omitted.
use strict;
use warnings;

main(@ARGV);

sub main
{
    #  %        KEY    =>    VALUE
    my %hash = ("this" => "foo", "that" => "bar", "other" => "baz");

    # This might have been declared differently (though it's less readable):
    #
    # my %hash = ("this", "foo", "that", "bar", "other", "baz");
    #
    # So a hash is a special type of array.

    print("this: " . $hash{"this"} . "\n");
    print("that: " . $hash{"that"} . "\n");
    print("other: " . $hash{"other"} . "\n");

    # prints the keys in random order
    print("keys of the hash: " . join(":", keys(%hash)) . "\n");

    # prints the keys in sorted order
    print("keys of the hash: " . join(":", sort(keys(%hash))) . "\n");

    # prints the values:
    print("values of the hash: " . join(":", sort(values(%hash))) . "\n");

    # iterating over keys
    foreach my $k (sort keys %hash) {
        my $v = $hash{$k};
        print("key: $k -- value: $v\n");
    }
}
