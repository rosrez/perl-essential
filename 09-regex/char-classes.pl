#!/usr/bin/perl

main(@ARGV);

sub main
{
    $_ = "  On December 10, I met 3 people ";

    # captures groups of digits
    my @list = /([0-9]+)/g;
    print_list(@list);

    # we can also use:
    my @list = /(\d+)/g;
    print_list(@list);

    # or this (the so called 'POSIX' form):
    my @list = /([[:digit:]]+)/g;
    print_list(@list);

    $_ = "ABC1DEFG2  HIJKLM3 OP";
    # extract digits:
    @list = /(\D+)/g;
    print_list(@list);
    # extract non-digits:
    @list = /(\D+)/g;
    print_list(@list);

    # extract 'word' characters
    @list = /(\w+)/g;
    print_list(@list);

    # extract 'non-word' characters, i.e. whitespace, newlines, etc.
    @list = /(\W+)/g;
    print_list(@list);
}

sub print_list
{
    print("|" . join(':', @_) . "|\n") if @_;
}
