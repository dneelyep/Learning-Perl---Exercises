#!/usr/bin/perl
use warnings;

# Write a program that prompts for and reads a string and a number
# (on separate lines of input) and prints out the string the number
# of times indicated by the number on separate lines.

print "Gimme' a string: ";
chomp($string = <STDIN>);

print "And a number: ";
chomp($number = <STDIN>);

print "$string\n" x $number;
