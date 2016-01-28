#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $x = undef;
    # If we try to print this, 
    #
    # print("x = $x\n");
    #
    # we get an error:
    #
    # Use of uninitialized value $x in concatenation (.) or string at undef.pl line 11.
    # x = 
    #

    $x = 15;
    # defined checks if our function returned a defined result
    if (defined isnum($x)) {
        print("x ($x) is a number\n");
    } else {
        print("x ($x) is not a number\n");
    }

    $x = 'string';
    if (defined isnum($x)) {
        print("x ($x) is a number\n");
    } else {
        print("x ($x) is not a number\n");
    }
}

# the functions checks if the value is numeric
sub isnum
{
    my $n = shift;
    # if there is no argument to the function, return undef 
    return $n unless defined $n;
    # not a number? -- checks for non-numeric characters in a string
    if ($n =~ /[^0-9]/) {
        # return undef to signal that its not a number
        return undef;
    # it is a number
    } else {
        # return the same value as supplied to signal that it is a number
        # because the result is defined
        return $n;
    }
}
