#!/usr/bin/perl
use warnings;

# Write a program that reads a list of strings (on separate lines)
# until end-of-input. Then it should print the strings in code
# point order. That is, if you enter the strings:

# fred, barney, wilma, betty

# the output should show:

# barney betty fred wilma.
# Are all of the strings on one line in the output or on separate
# lines? Could you make the output appear in either style?

chomp(@names = <STDIN>);

@sorted = sort(@names);

print "\n\n";
print "@sorted\n";

foreach $name (@sorted) {
    print $name;
    print "\n";
}

print "\n";
