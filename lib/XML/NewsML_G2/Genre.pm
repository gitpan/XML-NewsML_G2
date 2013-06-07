package XML::NewsML_G2::Genre;

# $Id: Genre.pm 46519 2013-05-31 15:38:08Z apatecgortan $

use Moose;
use namespace::autoclean;


has 'name', isa => 'Str', is => 'ro', required => 1;
has 'qcode', isa => 'Str', is => 'ro', required => 1;

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

XML::NewsML_G2::Genre - the journalistic genre of the news item

=head1 SYNOPSIS

    my $genre = XML::NewsML_G2::Genre->new(name => 'Feature', qcode => 'Feature');

=head1 ATTRIBUTES

=over 4

=item name

=item qcode

=back

=head1 AUTHOR

Philipp Gortan  C<< <philipp.gortan@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2013, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
