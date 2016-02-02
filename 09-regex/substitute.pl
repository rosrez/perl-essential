#!/usr/bin/perl

main(@ARGV);

sub main
{
    open(FH, 'text.txt');
    while (my $line = <FH>) {
        # replaces all occurrences
        $line =~ s/is/IS/g;
        # replaces just the first occurrence
        $line =~ s/regular/REGULAR/;
        print $line;
    }
    close FH;
}
