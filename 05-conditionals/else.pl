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
    # will print 'true'
    if (1) {
        print("This is true.\n");
    } else {
        print("This is false.\n")
    }

    # will print 'false'
    if (0) {
        print("This is true.\n");
    } else {
        print("This is false.\n")
    }

}
