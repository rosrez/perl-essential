#!/usr/bin/perl

# This program reads a file that is an extract of Perl
# regular expression documentation.
#
# The text can be obtained by typing 'perldoc perlre'.

main(@ARGV);

sub main
{
    # This reads the file text.txt and prints only
    # the lines that contain the word 'regular'

    # /regular/ is a shorthand notation for m/regular/,
    # which indicates a match. As usual, $_ is implied.
    # If we use the m-notation, we can replace / with
    # any other characters, e.g.:
    #
    # m|regular|

    open(FH, 'text.txt');
    while (<FH>) {
        print if /regular/;
    }
    close FH;
}

# The code in main() is a shorthand expands to this equivalent code
# in regular()

sub regular
{
    open(FH, 'text.txt');
    while ($_ = <FH>) {
    # IMPLIED ---V  VV -- PATTERN MATCHING OPERATOR
        print if $_ =~  m/regular/;
    }
    close FH;
}
