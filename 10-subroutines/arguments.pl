#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $s = "string";
    my $y = 42;
    my $z = "zee";

    # this passes $s, $y, $z to the subroutine as a list
    func($s, $y, $z);
}

sub func
{
    my @allargs = @_;
    my ($arg1, $arg2, $arg3) = @_;
    print("Arguments as a list: @allargs\n");
    print("Arguments copied as individual variables: $arg1, $arg2, $arg3\n");
}
