package Katapotter;

use Modern::Perl;
use List::MoreUtils qw/uniq/;

sub price {
    my @booklist = @_;
    my $unit_price = 8;
    my $remise = {
        0 => 0,
        1 => 1,
        2 => 0.95,
        3 => 0.90,
        4 => 0.8
    };
    my $price;
    my @liste_unique;
    my @liste_restants;

    if(scalar @booklist == 0){
        return 0;
    }

    foreach my $book_element (@booklist) {
        if ( not grep /$book_element/,  @liste_unique ) { 
            push @liste_unique, $book_element;
        } else {
            push @liste_restants, $book_element;
        }
    }
    $price = @liste_unique * $unit_price * $remise->{scalar(@liste_unique)} + price(@liste_restants);
    return $price;
}
1;
