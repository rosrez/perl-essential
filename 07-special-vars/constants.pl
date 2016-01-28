#!/usr/bin/perl

main(@ARGV);

# Special constants start with two underscores and end with two underscores,
# for example: __FILE__. 
# They don't need a dollar sign!

# __END__ can be used here to end the script prematurely.
# This is used for POD documentation.

sub main
{
    print("The filename is " . __FILE__ . "\n");
    print("The line number is " . __LINE__ . "\n");
    print("The package is " . __PACKAGE__ . "\n");
}
