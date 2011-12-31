#!/usr/bin/perl
use warnings;
use strict;
use 5.010;

# Write a subroutine named greet that welcomes the person
# you name by telling them the name of the last person
# it greeted:

# greet( "Fred" );
# greet( "Barney" );

# This sequence of statements should print:

# Hi Fred! You are the first one here!
# Hi Barney! Fred is also here!

my $last_person = "none";

sub greet {
    my @new_person = @_;

    if ($last_person eq "none") {
	print "Hi $new_person[0]! You are the first one here!\n";
    } else {
	print "Hi $new_person[0]! $last_person is also here!\n";
    }
    $last_person = $new_person[0];
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
