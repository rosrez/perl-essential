#!/usr/bin/perl

main(@ARGV);

sub main
{

    open(FH, 'text.txt');
    while (<FH>) {
        # This extracts all words beginning with an 'a' into a list.
        # Note that pattern matching using capture groups
        # creates a list of matches.
        # Note also that even though we have a single capture group here
        # we may get multiple items in a list since we do the capture
        # globally.
        my @list = /\W(a\w*)/g;
        # Note the 'if' here: if there's no match, the list will be empty (false)
        print(join(',', @list)) if @list;
        print "\n" if @list;
    }
    close FH;
}
