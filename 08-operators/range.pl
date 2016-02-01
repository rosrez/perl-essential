#!/usr/bin/perl

main(@ARGV);

sub main
{
    # prints: 123456789
    print foreach (1..9);
    # prints: abc...zABC...z
    print foreach ('a'..'z','A'..'Z');
    print "\n";
    # prints 00 followed by 01 up to 31 - useful for dates
    print join(', ', ('00'..'31'));
    print "\n";
}
