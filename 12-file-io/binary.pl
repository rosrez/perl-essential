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

    my $bufsize = 1024 * 1024;  # buffer size for read()
    my $buf = '';               # initial empty buffer for read()

    # The following loop works fine on UNIX-based OSes, but doesn't work on Windows:
    # The reason is that Windows tries to translate newlines

    # In order to make sure that no translation is attempted, we need to set the
    # mode to binary on both input and output handles.
    $infh->binmode(":raw");
    $outfh->binmode(":raw");
    while (_$infh->read($buf, $bufsize)) {
        $outfh->print($buf);
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
