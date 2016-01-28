#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $x = 42;
    # if -- postfix notation
    # This is most useful if there is only one statement 
    # that is executed conditionally.
    # More statements would require a separate block so
    # the conciseness if this statement would be lost.
    print("number is in range!\n") if ($x > 25 and $x < 100);
    # the parentheses after 'if' are not required in this case:
    print("number is in range!\n") if $x > 25 and $x < 100;

}
