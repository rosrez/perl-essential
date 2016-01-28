#!/usr/bin/perl

use strict;
use warnings;

# Hash-like definitions of constants

use constant {
    TRUE => 1,
    FALSE => ''
};

main(@ARGV);

sub main
{
    # will print
    if (15) {
        print("This is true (15).\n");
    }

    # will print
    if ('15') {
        print("This is true ('15').\n");
    }

    # won't print
    if (0) {
        print("This is true (0)\n.");
    }

    # won't print
    if ("") {
        print("This is true ('')\n.");
    }
    
    # won't print
    if (undef) {
        print("This is true (undef)\n.");
    }

    # ======  =====
    # will print
    if (TRUE) {
        print("This is true (TRUE).\n");
    }

    # won't print
    if (FALSE) {
        print("This is true (undef)\n.");
    }

}
