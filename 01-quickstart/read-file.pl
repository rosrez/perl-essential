#!/usr/bin/perl

use strict;
use warnings;

my $filename = 'lines.txt'; # the name of the file

# open the file
open(FH, $filename);        i
# read the file: # this reads the lines in the files into the lines array
my @lines = <FH>;           
# close the file handle
close(FH); 

# the number of lines in the file: 
# we cast our lines array to a scalar to retrieve the number of lines read
my $count = scalar @lines;  
print("There are $count lines in $filename\n");
