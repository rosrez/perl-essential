#!/usr/bin/perl

main(@ARGV);

sub main
{
    print("This is the \"quote.pl\" file\n");

    # The q (quote) operator tells Perl to interpret the string literally.
    # We may use multiple character combinations to delimit the string from surrounding code,
    # as in this example.
    print(q/This is the "quote.pl" file/ . "\n");
    print(q[This is the "quote.pl" file] . "\n");
    print(q{This is the "quote.pl" file} . "\n");

    # Note also, that special characters are treated literally in this case.
    
    # Double-quote operator expands variable values, while single-quote operator does not.
    # This is similar to using "" vs '' strings:
    my $var = 42;
    print(q/This is var ($var)/ . "\n");
    print(qq/This is var ($var)/ . "\n");
}
