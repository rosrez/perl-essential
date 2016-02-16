#!/usr/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $infile = shift or usage();
    my $outfile = shift or usage();

    open(IN, '<', $infile) or error("cannot open file $infile for reading ($!)");
    open(OUT, '>', $outfile) or error("cannot open file $outfile for writing ($!)");

    # The loop explained:
    # while <IN> reads consecutive lines into $_;
    # print OUT prints $_ to the OUT file handle
    print OUT while <IN>;

    close IN;
    close OUT;
}

sub error
{
    my $m = shift or exit(2);
    print("$m\n");
    exit(2);
}

sub usage
{
    printf("Usage: $0 infile outfile\n");
    exit(1);
}
