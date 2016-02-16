#!/usr/bin/perl

use strict;
use warnings;
use IO::File;

main(@ARGV);

# This script illustrates the use of object-oriented I/O model in perl.
# Objects in Perl are reference variables, so calling methods on object
# requires the usual -> syntax, e.g. IO::File->new()

# Also note that we don't need to explicitly call close() on the $fh object:
# objects are automatically destroyed when they go out of scope (which will
# call close() implicitly in this case).

# To explore the IO module and IO::File class method's see
# perldoc IO or perldoc IO::File or perldoc IO::Handle (File inherits from Handle)

sub main
{
    my $filename = shift or usage();
    
    # We can an attempt to create a file object (== open a file) 
    # with error message upon failure as usual.
    my $fh = IO::File->new($filename, 'r') or error("cannot open file $filename ($!)");

    # $fh can now be used as a regular file handle:
    print while <$fh>;   # print all lines from the file

    # The above could have been written as:
    # while (my $line = $fh->getline) { print $line; }
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
