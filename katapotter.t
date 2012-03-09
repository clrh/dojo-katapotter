#!/usr/bin/perl
use Modern::Perl;
use Test::More;
use Katapotter;

my $nb_test = 4;
plan tests => $nb_test;

is(Katapotter::price(1), 8, "1 book = 8€");
is(Katapotter::price(1,2), 8*2*0.95, "2 books differents");
is(Katapotter::price(1,2,3), 8*3*0.90, "3 books differents");
is(Katapotter::price(1,1), 8*2, "2 identical books");
