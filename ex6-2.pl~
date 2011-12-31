#!/usr/bin/perl
use warnings;
use strict;

# Write a program that will ask the user for a given name and 
# report the corresponding family name. Use the names of people
# you know, or use the book's table.

my %last_names = ( 
   "daniel" => "neel",
   "ryan" => "steele",
   "michael" => "shepherd",
   "jessica" => "harris",
   "patricia" => "garcia",
   "margaret" => "neel",
   "chris" => "neel",
    );

print "Type in a name to request: ";
chomp(my $requested_name = <STDIN>);

print "$requested_name $last_names{$requested_name}\n";
