package XML::NewsML_G2::Copyright_Holder;

# $Id: Copyright_Holder.pm 57056 2014-10-15 16:26:09Z apatecgortan $

use Moose;
use namespace::autoclean;

with 'XML::NewsML_G2::Role::HasQCode';

has 'notice', isa => 'Str', is => 'ro';
has 'uri', isa => 'Str', is => 'ro';

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

XML::NewsML_G2::Copyright_Holder - the news provider (news agency)

=head1 SYNOPSIS

    my $apa = XML::NewsML_G2::Copyright_Holder->new(name => 'APA', qcode => 'apa');

=head1 ATTRIBUTES

=over 4

=item notice

for an optional copyright notice

=back

=head1 AUTHOR

Stefan Hrdlicka  C<< <stefan.hrdlicka@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2013-2014, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
