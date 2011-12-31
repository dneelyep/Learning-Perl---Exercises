#!/usr/bin/perl
use warnings;
use strict;

# Modify ex5-2.pl to let the user choose the column width, so 
# that entering 30, hello, good-bye (on separate lines) would
# put the strings at the 30th column.

# Extra credit: Make the ruler line longer when the selected
# width is larger.

# 123456789012345678901234567890123456789012345678901234567890
#                hello
#             good-bye

print "Enter how long ya want the things to be to the right: ";
chomp(my $width = <STDIN>);

print "Enter some strings on separate lines: ";
chomp(my @input = <STDIN>);

my $ruler_width = ($width / 10) + 1;

print "\n" . 1234567890 x $ruler_width . "\n"; # Ruler.
foreach my $item (@input) {
    printf("%${width}s\n", $item);
}
