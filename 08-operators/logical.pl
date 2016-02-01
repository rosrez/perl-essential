#!/usr/bin/perl

main(@ARGV);

sub main
{
    # High-precedence and low-precedence logical operators

    # If $ARGV[1] does not evaluate to true (it's undefined or empty string) 
    # then the other side of the OR (||) will be evaluated and the result
    # will be returned to the string. This is inspired by shell syntax.
    my $s = $ARGV[1] || "default";
    print("$s\n");

    # In other situations, the lower precedence 'or' would be preferable
    # Note that || will most likely require that the two expressions be
    # in parentheses in order to avoid confusion (|| might bind tightly
    # to a part of an expression).
    # The 'or' version doesn't require this kind of precaution.
}
