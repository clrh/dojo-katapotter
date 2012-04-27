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
is(Katapotter::price(1,2,3,1), 8*3*0.9+8, "2 identical books and two books");
is(Katapotter::price(1,2,3,1,1), 8*3*0.9+8*2, "3 identical books and two books in order");
is(Katapotter::price(1,2,1,3,1), 8*3*0.9+8*2, "3 identical books and two books not in order");
is(Katapotter::price(1,2,1,3,1,1), 8*3*0.9+8*3, "4 identical books and two books");
is(Katapotter::price(1,2,3,4,5,1,5), 8*5*0.75+8*2*0.95, "5 different books and 2 books");

# should work
isnt(Katapotter::price(1,2,3,4,5,1,2,5), 8*5*0.75 + 8*3*0.9 , "5 books et 3 books ");
is(Katapotter::price(1,2,3,4,5,1,2,5),  2 * 8*4*0.80  , "4 books * 2");
is(Katapotter::price(1,2,3,4,5,1,2,4), 2 * 8*4*0.80 , "4 books * 2 ");

done_testing;
