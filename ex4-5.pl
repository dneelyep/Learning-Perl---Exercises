#!/usr/bin/perl
use warnings;
use strict;
use 5.010;

# Modify ex4-4.pl to tell each new person the names of
# all the people it has previously greeted:

# &greet( "Fred" );
# &greet( "Barney" );
# &greet( "Wilma" );
# &greet( "Betty" );

# This sequence of statements should print:

# Hi Fred! You are the first one here!
# Hi Barney! I've seen: Fred
# Hi Wilma! I've seen: Fred Barney
# Hi Betty! I've seen: Fred Barney Wilma


my @previous_people;

sub greet {
    my @new_person = @_; # The new person is the argument received.

    if (@previous_people[0] eq '') {
	print "Hi $new_person[0]! You are the first one here!\n";
    } else {
	print "Hi $new_person[0]! I've seen: @previous_people\n";
    }
    push(@previous_people, $new_person[0]);
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );
