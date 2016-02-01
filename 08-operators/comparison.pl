#!/usr/bin/perl

main(@ARGV);

sub usage
{
    die ("usage: $ARGV[0] arg1 arg2");
}

sub main
{
    my $a = shift || usage();
    my $b = shift || usage();

    if ($a =~ /^[0-9]+$/ and $b =~ /^[0-9]+$/) {
        print("comparing arguments as numbers\n");
        print("arg1 ($a) < arg2 ($b)\n") if ($a < $b);
        print("arg1 ($a) <= arg2 ($b)\n") if ($a <= $b);
        print("arg1 ($a) == arg2 ($b)\n") if ($a == $b);
        print("arg1 ($a) >= arg2 ($b)\n") if ($a >= $b);
        print("arg1 ($a) > arg2 ($b)\n") if ($a > $b);
    } else {
        print("comparing arguments as strings\n");
        print("arg1 ($a) eq arg2 ($b)\n") if ($a eq $b);
        print("arg1 ($a) gt arg2 ($b)\n") if ($a gt $b);
        print("arg1 ($a) lt arg2 ($b)\n") if ($a lt $b);
    }
}
