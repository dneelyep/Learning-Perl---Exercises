#!/usr/bin/perl
use warnings;
use strict;

# Write a program to list all of the keys and values in %ENV. Print
# the results in two columns in ASCIIbetical order.

# For extra credit, arrange the output to vertically align both 
# columns. Once you get the program running, try setting some
# new environment variables and ensuring the show up in your output.

foreach (sort keys %ENV) {
    if (length($_) <= 5) {
	printf("%s\t\t\t%s\n", $_, $ENV{$_});
    }
    elsif ( length($_) > 5 && length($_) <= 7 ) {
	printf("%s\t\t\t%s\n", $_, $ENV{$_});
    }
    elsif (length($_) > 7 && length($_) <= 15) {
	printf("%s\t\t%s\n", $_, $ENV{$_});
    }
    else {
     	printf("%s\t%s\n", $_, $ENV{$_});
    }
}
