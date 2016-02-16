#!/usr/bin/perl

use strict;
use warnings;
use IO::File;

main(@ARGV);

# entry point
sub main
{
    # this will assign ARGV[0] or lines.txt if there is no command-line argument
    my $filename = shift || "lines.txt";
    # call our subroutine that returns the number of lines in the file
    my $count = countlines( $filename );
    # final message - again, as a subroutine
    message("There are $count lines in $filename");
}

# countlines( filename ) - count the lines in a file
# returns the number of lines

sub countlines
{
    my $filename = shift;   # get subroutine argument #1
    error("countlines: missing filename") unless $filename;

    # open the file
    my $fh = IO::File->new( $filename, "r" ) or
        error("Cannot open $filename ($!)\n");

    # count the lines
    my $count = 0;
    # postfix while form
    $count++ while ( $fh->getline );

    # return the result
    return $count
}

# message ( string ) - display a message terminated with a newline
sub message
{
    my $m = shift or return;    # if no input argument supplied, do nothing
    print("$m\n");
}

# error ( string ) - display an error message and exit
sub error
{
    my $e = shift || 'unknown error';
    print("$0: $e\n");          # $0 is the program name
    exit 0;
}
