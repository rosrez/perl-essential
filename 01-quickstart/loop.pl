#!/usr/bin/perl

use strict;
use warnings;
use IO::File;

my $filename = 'lines.txt'; # the name of the file

# open the file - with simple error reporting
my $fh = IO::File->new( $filename, "r" );
#            ^^^^ THIS IS AN OBJECT: we're calling the constructor here.
if (! $fh) {
    print "Cannot open $filename ($!)\n";   # $! corresponds to stderror(errno) in C
    exit;
}

# count the lines
my $count = 0;
#          VV -- THIS IS A METHOD: we're calling the getline method here.
while ( $fh->getline ) {
    $count++;
}

# close the file handle
$fh->close; 

print("There are $count lines in $filename\n");
