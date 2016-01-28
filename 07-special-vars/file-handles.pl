#!/usr/bin/perl

main(@ARGV);

sub main
{
    #     VVVVVV -- FILE HANDLE
    print(STDOUT "Command-line arguments are " . join(':', @ARGV) . "\n");

    # STDOUT, STDERR are possible
}
