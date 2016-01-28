#!/usr/bin/perl

# @ARGV is a special variable with the list of command-line arguments
main(@ARGV);

sub main
{
    # @ARGV is a global variable, accessible from here
    print("Command-line arguments are " . join(':', @ARGV) . "\n");
    
    # @_ is the list of arguments to main()
    print("The list of arguments to main is ". join(':', @_) . "\n");
    
    # $_ is the default variable, used as as default for printing, iterating etc.
    print "$_\n" foreach @_;
}
