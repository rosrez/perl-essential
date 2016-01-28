#!/usr/bin/perl

main(@ARGV);

sub main
{
    # The 'empty filehandle' operator
    # takes every file name on the command line
    # and reads the files, in turn, line by line.
    while (<>) {
        print;  # prints $_
    }

    while (<>) {
        print "$. $_" # $. is a special variable that holds the line number
    }
}
