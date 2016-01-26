#!/user/bin/perl

use strict;
use warnings;

main(@ARGV);

sub main
{
    my $n = 42;
    # single quotes: variable references don't work since 
    # they are taken literally
    my $singleq = 'this is a string $n';
    # double quotes: variable reference is substituted
    # with the variable value
    my $doubleq = "this is a string $n";

    print("$singleq\n");
    print("$doubleq\n");
}
