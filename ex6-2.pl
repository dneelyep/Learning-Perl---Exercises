#!/usr/bin/perl
use warnings;
use strict;

# Write a program that reads a series of words (with one word per 
# line) until end-of-input, then prints a summary of how many times
# each word was seen.

# So, if the input words were fred, barney, fred, dino, wilma, fred
# (all on separate lines), the output should tell us that fred was
# seen 3 times.

# For extra credit, sort the summary words in code point order in
# the output.

chomp(my @input = <STDIN>);

my %number_of_times = ();

foreach (@input) {
    if (defined $number_of_times{@input}) {
	$number_of_times{@input}++;
    } else {
	push %number_of_times, $_;
    }
}

foreach (%number_of_times) { # print the hash
    print "$_ $number_of_times{$_}\n";
}
