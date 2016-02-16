#!/usr/bin/perl

# This illustrates subroutine return values and how they
# are used by calling code.

use strict;
use warnings;

main(@ARGV);

sub main
{
    my ($x, $y) = (2, 4);
    # $sum will get our return value
    my $sum = addnum($x, $y);
    print "$x + $y = $sum\n";
    ($x, $y) = (100, 50);
    # subroutine result can be argument to some other subroutine:
    print "$x + $y = " . addnum($x, $y) . "\n";
}

sub addnum
{
    my ($v1, $v2) = @_;
    return $v1 + $v2;
}
