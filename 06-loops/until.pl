#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $line;
    open(FH, 'lines.txt');
    # repeats until Line 3 is encountered
    until (($line = <FH>) =~ /3/) {
        print $line;
    }
    close FH;
    sleep 1;

    $line = "";
    # Most often, we see 'until' in this form of loop
    open(FH1, 'lines');
    # repeats until line 3 is encountered
    # TODO: doesn't work right in my env --
    # prints the two lines but then reports errors
    # (readline() on closed filehandle, etc.)
    print $line = <FH> until $line =~ /3/;
    close FH1;
}
