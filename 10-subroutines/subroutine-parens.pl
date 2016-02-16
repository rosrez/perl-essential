#!/usr/bin/perl

# This script illustrates the various options for parentheses 
# during subroutine invocation.

# First, note that Perl's built-in functions can be called without parentheses 
# (see print() invocations below).

use strict;
use warnings;

# We DECLARE declared_before(), so it can be invoked without parentheses
# even if the definition is after the invocation.
#
# qw() creates a list, so we can declare as many subroutines as we like like this
use subs qw(declared_before);

main(@ARGV);

# Note that this subroutine is defined BEFORE the one that calls it.
sub before
{
    my $msg = shift or return;
    # Perl's built-in: can be called without parentheses
    print "$msg\n";
}

sub main
{
    # before() is defined before main(): parentheses are optional
    before "This subroutine is defined BEFORE main()";

    # declared_before() is DECLARED before main(): parentheses are optional
    declared_before "This soubroutine is *declared* BEFORE main()";

    # after() is defined after main(): parentheses are mandatory
    after("This subroutine is defined AFTER main()");
}

# Note that this subroutine is defined AFTER the one that calls it.
sub after
{
    my $msg = shift or return;
    # Perl's built-in: can be called without parentheses
    print "$msg\n";
}

# This subroutine has been DECLARED before it's invoked
sub declared_before
{
    my $msg = shift or return;
    # Perl's built-in: can be called without parentheses
    print "$msg\n";
}
