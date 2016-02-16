#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $filename = shift or usage();

    # FH - is a file handle, it has no $ sign in front of it.
    # File handles tend to be written in all capitals.

    # The '<' is the file mode (the argument can be omitted).
    
    # $! is the error message (e.g. 'No such file or directory')

    open(FH, '<', $filename) or error("cannot open file ($!)");
    print while <FH>;   # print all lines from the file

    # The shorthand while loop could have been written like this:
    #
    # while (my $line = <FH>) { print $line }
    # 
    # This would give us access to individual lines, one at a time

    close FH;
}

sub error
{
    my $m = shift or exit(2);
    print("$m\n");
    exit(2);
}

sub usage
{
    printf("Usage: $0 filename\n");
    exit(1);
}
