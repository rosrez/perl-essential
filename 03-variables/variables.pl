#!/usr/bin/perl

# These will give a warning if my is omitted.
use strict;
use warnings;

# main won't use this value, because ITS $decimal is declared to have a local scope
my $decimal = 23456;

main(@ARGV);

sub main
{
    # My indicates that this variable is defined locally 
    # within the lexical scope of the enclosing block.
    # $ indicates that this is a scalar (one-dimensional variable)
    my $decimal = 12345;
    my $octal = 0100;
    my $hex = 0x100;
    my $binary = 0b100;
    my $float = 1245.567;
    my $exp = 12.34e56;

    print("decimal is $decimal\n");
    print("octal is $octal\n");     # prints 64
    print("hexadecimal is $hex\n"); # prints 256
    print("binary is $binary\n");   # prints 4
    print("float is $float\n");
    print("exp is $exp\n");
}
