#!/usr/bin/perl

main(@ARGV);

sub main
{
    my $time = "05:27:32";
    # split() returns a list of matches
    # The first argument to split() is a regular expression 
    # used as a marker to split the string
    my ($hour, $min, $sec) = split(/:/, $time);
    # The // notation in split is a shorthand.
    # As with regular pattern matching, it can be replaced with
    # m/:/, m|:| or the like.
    print "|$time| -- extracted hour: $hour, min: $min, sec: $sec\n";
}
