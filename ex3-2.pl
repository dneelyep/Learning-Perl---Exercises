#!/usr/bin/perl
use warnings;

# Write a program that reads a list of numbers (on separate lines)
# until end-of-input and then prints for each number the corresponding
# person's name from the below list.

# fred betty barney dino wilma pebbles bamm-bamm

@names = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
$i = 0;
while ($i < 7) {
    print $names[$i];
    print "\n";
    $i++;
}

chomp(@input = <STDIN>);

foreach $person (@input) {
    print "$names[$person-1]\n";
}
