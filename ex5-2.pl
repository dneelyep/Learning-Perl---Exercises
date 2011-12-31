#!/usr/bin/perl
use warnings;
use strict;
use autodie;

# Write a program that asks the user to enter a list of strings
# on separate lines, printing each string in a right-justified,
# 20-character column. To be certain that the output is in the 
# proper columns, print a "ruler line" of digits as well. Make
# sure you're not using a 19-character column by mistake! For
# example, entering hello, goodbye should give output something
# like this:

# 123456789012345678901234567890123456789012345678901234567890
#                hello
#             good-bye

print "Enter some strings on separate lines: ";
chomp (my @strings = <STDIN>);

print @strings;

print "\n123456789012345678901234567890123456789012345678901234567890\n";

foreach my $item (@strings) {
    printf("%20s\n", $item);
}
