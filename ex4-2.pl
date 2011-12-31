#!/usr/bin/perl
use warnings;
use strict;

# Using the subroutine from ex4-1.pl, make a program to
# calculate the sum of the numbers from 1 to 1,000.

sub total {
    my @args = @_;
    my $running_total = 0;

    foreach my $item (@args) {
	$running_total += $item;
    }

    return $running_total;
}

my @fred = 1..1000;
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
