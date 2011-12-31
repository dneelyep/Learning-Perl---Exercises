#!/usr/bin/perl
use warnings;
use strict;

# Write a subroutine, called &above_average, which takes
# a list of numbers and returns the ones which are above
# the average (mean). Try your subroutine in the test
# program:

# my @fred = above_average(1..10);
# print "\@fred is @fred\n";
# print "(Should be 6 7 8 9 10)\n";
# my @barney = above_average(100, 1..10);
# print "\@barney is @barney\n";
# print "(Should be just 100)\n";

sub above_average {
    my @args = @_;
    my $sum = 0;

    foreach (@args) {
	print $args[$_];
	$sum += $args[$_];
    }

    my $total_args = @args + 1 - 1; # Evaluate in scalar context, to get the # of args.
    my $average = $sum / $total_args;
    my @larger_list = ();

    print "Sum: $sum\n";
    print "Total args: $total_args\n";
    print "Average: $average\n";

    foreach my $i (@args) {
	if ($args[$i] > $average) {
	    push(@larger_list, $args[$i]);
	}
    }

    return @larger_list;
}

my @fred = &above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = &above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
