#!/usr/bin/perl
use warnings;
use strict;
use autodie;

# Write a program that acts like cat, but reverses the order of
# the output lines. If you run it as <programname> fred barney betty
# the output should be all of file betty from last line to first, 
# then barney and then fred, also from last line to first.

my @inputs = reverse(@ARGV);

foreach my $file (@inputs) {
    open(FILE, '<', $file);
    my @line_array;

    while (<FILE>) {
	push(@line_array, $_);
    }

    @line_array = reverse(@line_array);
    print(@line_array);
    close(FILE);
}
