#!/bin/bin/perl

# Whitespace (spaces, tabs, newlines) is mostly ignored

use strict;
use warnings;

main(@ARGV);

sub main
{
    message("This is the test file");
    # This is valid subroutine invocation syntax since whitespace is ignored
    shortmessage(
        "Another message"
    );
    extrememessage("The 3rd message");
}

# This is more or less normal formatting (i.e. very human-readable)
sub message
{
    my $m = shift or return;
    print("$m\n");
}

# We can contract whitespace to the bare minimum since any extra whitespace is ignored. 
sub shortmessage{my $m = shift or return;print("$m\n");}

# any extra spaces, tabs or newlines between the keyword and the subroutine name are ignored 
sub 
    extrememessage {
        my $m = shift or return;
        print("$m\n");
}
