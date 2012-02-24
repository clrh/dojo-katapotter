#!/usr/bin/perl
use Test::More;

my $nb_test = 2;
plan tests => $nb_test;

BEGIN { $nb_test = 2; }

sub price {
    my @booklist=@_;
    return 8 if scalar(@booklist)==1;   
    if (scalar(@booklist)==2)
    {
         return 2*8*0.95
    }
 
}

is(price(1), 8, "1 book = 8€");
is(price(1,2), 8*2*0.95, "2 book differents");
