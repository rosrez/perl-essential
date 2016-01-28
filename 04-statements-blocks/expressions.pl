#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

# Perl has a 'everything is an expression' paradigm.
# This means that every statement in Perl is also an expression.

sub main
{
    my $var1 = 4 + 5*2;

    #                        VVVV --- THIS WILL PRINT IF THE LEFT-HAND PART EVALUATES TO ZERO
    my $var2 = $var1 - 14 || print("var1 ($var1) is 14\n");

    # Note that print() returns true, so the resulting value of var2 is 1!
    print("var2 is $var2\n");

    my $num = 0;
    my $str = "";
    my $empty = undef;

    print("Non-zero numeric values, non-empty strings evaluate to false\n");

    print_bool($num);
    print_bool($str);
    print_bool($empty);

    print("Non-zero numeric values, non-empty strings evaluate to true\n");

    $num = 15;
    $str = "string";

    print_bool($num);
    print_bool($str);
}

sub print_bool
{
    my $arg = shift;

    my $argstr = $arg;
    if (not defined($arg)) {
        $argstr = "undef";
    }

    if ($arg) {
        print "($argstr) is true\n";
    } else {
        print "($argstr) is false\n";
    }
}
