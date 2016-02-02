#!/usr/bin/perl

main(@ARGV);

sub main
{

    open(FH, 'text.txt');
    while (<FH>) {
        # This xtracts the first 6 characters in a line into $1.
        # Note that the caret may or may not be inside the parentheses.
        /^(......)/;
        # The result goes into $1 since we used a capture group.
        print "$1\n" if $1;
    }
    close FH;
}
