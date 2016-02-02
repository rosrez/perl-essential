#!/usr/bin/perl

main(@ARGV);

sub main
{
    my $time = "05:24:37";
    # we specify capture groups with parentheses
    $time =~/(..):(..):(..)/;
    # individual matches can now be referred to as $1, $2, $3.
    print "1. String: |$time| --- extracted hour: $1, minutes: $2, seconds: $3\n";

    # another way to do it (list assignment):
    my ($hour, $min, $sec) = $time =~ /(..):(..):(..)/;
    print "2. String: |$time| --- extracted hour: $hour, minutes: $min, seconds: $sec\n";

    # a match with multiple capture groups so a regular list can be used to get the matches
    # from capture groups.
}
