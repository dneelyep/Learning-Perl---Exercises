#!/usr/bin/perl
use warnings;

# Write a program that prompts for and reads two numbers (on
# separate lines of input) and prints out the product of the
# two numbers multiplied together.

print "Enter the first number: ";
chomp($first_num = <STDIN>);

print "Enter the second number: ";
chomp($second_num = <STDIN>);

$product = $first_num * $second_num;

print "The product of $first_num and $second_num is: $product\n";
