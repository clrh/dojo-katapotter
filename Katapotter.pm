package Katapotter;

use Modern::Perl;

sub price {
    my @booklist=@_;
    my $nb_books=scalar(@booklist);
    my $remise = {
    0 => 0,
    1 => 1,
    2 => 0.95,
    3 => 0.90
    };
    return $nb_books*8*$remise->{$nb_books}
}
1;
