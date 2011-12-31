#!/usr/bin/perl
use warnings;
use strict;

# Write a subroutine, named total, which returns the total of a
# list of numbers. Hint: the subroutine should not include any
# I/O; it should simply process its parametrs and return a value
# to its caller. Try it out in this sample program, which merely
# exercises the subroutine to see that it works. The first group 
# of numbers should add to 25.

# my @fred = qw{ 1 3 5 7 9 };
# my $fred_total = total(@fred);
# print "The total of \@fred is $fred_total.\n";
# print "Enter some numbers on separate lines: ";
# my $user_total = total(<STDIN>);
# print "The total of those numbers is $user_total.\n";

sub total {
    my @args = @_;
    my $running_total = 0;

    foreach my $item (@args) {
	$running_total += $item;
    }

    return $running_total;
}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";
