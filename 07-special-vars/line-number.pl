#!/usr/bin/perl

main(@ARGV);

sub main
{
    while (<>) {
        print "$. $_" # $. is a special variable that holds the line number
    }
}
