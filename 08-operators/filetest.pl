#!/usr/bin/perl

main(@ARGV);

sub main
{
    # <*> is a special operator; note that this does shell-like globbing,
    # so we may use something like <*.pl> here.
    my @dirlist = <*>;
    foreach my $fn (@dirlist) {
        my $size = -s $fn;
        print("$fn ($size bytes) ");
        print("is a plain file\n") if (-f $fn);
        print("is a directory\n") if (-d $fn); 
    }

    # For a complete list, see perldoc: perldoc -f -f will display the list
    # (-f, -s, -d are FUNCTIONS, so we have to look up info on functions).
}
