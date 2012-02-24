#!/usr/bin/perl
use Test::More;

my $nb_test = 1;
plan tests => $nb_test;

BEGIN { $nb_test = 1; }

sub my_fct {
   8; 
}

is(my_fct(1), 8, "1 book = 8€");
