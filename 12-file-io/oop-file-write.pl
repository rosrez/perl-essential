#!/usr/bin/perl

use strict;
use warnings;
use IO::File;

main(@ARGV);

# This script illustrates writing to files using object-oriented I/O model in Perl.

sub main
{
    my $infile = shift or usage();
    my $outfile = shift or usage();

    my $infh = IO::File->new($infile, 'r') or error("cannot open file $infile ($!)");
    my $outfh = IO::File->new($outfile, 'w') or error("cannot open file $outfile ($!)");

    while (my $line = $infh->getline) {
        $outfh->print($line);   # call the print() method on the output file handle
    }
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
