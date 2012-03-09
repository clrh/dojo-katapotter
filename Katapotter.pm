package Katapotter;

use Modern::Perl;
use List::MoreUtils qw/uniq/;

sub price {
    my @booklist = @_;
    my $nb_books = scalar(@booklist);
    my $unit_price = 8;
    my $remise = {
        0 => 0,
        1 => 1,
        2 => 0.95,
        3 => 0.90
    };
    my $price;
    my $unique_books=scalar(uniq(@booklist)) ;
    if($nb_books == 2 and $booklist[0] == $booklist[1]) {
	$price = 2*$unit_price;
    } elsif (($nb_books == 3 ) and ($unique_books == 2)) {
          $price = $unique_books*$unit_price*$remise->{$unique_books}+$unit_price;
    } else {
	$price = $nb_books*$unit_price*$remise->{$nb_books};
    }
    return $price;
}
1;
