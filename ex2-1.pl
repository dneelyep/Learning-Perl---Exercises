#!/usr/bin/perl
use warnings;

# Write a program that computes the circumference of a circle
# with a radius of 12.5. Circumference is 2pi times the radius
# (approximately 2 times 3.141592654). The answer you get should
# be about 78.5.

$pi = 3.141592654;

print "Enter the radius: ";
chomp($radius = <STDIN>);

$circumference = 2 * $pi * $radius;

if ($circumference < 0) {
    print "Circumference is: 0\n";
} else {
    print "Circumference is: $circumference\n";
}
