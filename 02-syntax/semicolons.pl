#!/bin/bin/perl

# Whitespace (spaces, tabs, newlines) is mostly ignored

use strict;
use warnings;

main(@ARGV);

sub main
{
    message("This is a test message");
    message("This is another message")      # END-OF-BLOCK: Semicolon is optional here
}

sub message
{
    my $m = shift or return;
    print("$m\n")       # END-OF-BLOCK: Semicolon is optional here
}
