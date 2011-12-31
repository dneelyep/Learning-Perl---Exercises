#!/usr/bin/perl
use warnings;

# Write a program that reads a list of strings on separate lines
# until end-of-input and prints out the list in reverse order.

chomp(@strings = <STDIN>);

@reversed_strings = reverse(@strings);

print "\n";
print "@reversed_strings";
