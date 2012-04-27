#!/usr/bin/perl
use Modern::Perl;
use Test::More;
use Katapotter;


is(Katapotter::price(1), 8, "1 book = 8€");
is(Katapotter::price(1,2), 8*2*0.95, "2 books differents");
is(Katapotter::price(1,2,3), 8*3*0.90, "3 books differents");
is(Katapotter::price(1,1), 8*2, "2 identical books");
is(Katapotter::price(1,1,2), 8*2*0.95+8, "2 identical books and one book");
is(Katapotter::price(1,2,3,4), 8*4*0.8, "4 different bookss");

done_testing;

#(1,2,3,4,5) = 5 * 8 * 0.75
#(1,2,3,1) = 8 * 3 * 0.9 + 8
#(1,1,2,2,3,3,4,5) = (1,2,3,4) + (1,2,3,5)
#(1,1,2,2,3) = (1,2,3) + (1,2)

