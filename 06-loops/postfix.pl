#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, 'lines.txt');
    # This expands as follows:
    #
    # print $_ while ($_ = <FH>);
    #
    # Steps involved:
    #
    # 1. <FH> defaults to $_ = <FH> .
    # 2. print defaults to print $_ .
    print while (<FH>);
    close FH;

    print ("-------\n");

    my @list = ('one', 'two', 'three', 'four', 'five');
    print "$_\n" foreach @list;
}
