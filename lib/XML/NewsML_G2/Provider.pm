package XML::NewsML_G2::Provider;

# $Id: Provider.pm 55790 2014-08-26 18:30:30Z apatecgortan $

use Moose;
use namespace::autoclean;

with 'XML::NewsML_G2::Role::HasQCode';

has 'notice', isa => 'Str', is => 'ro';

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

XML::NewsML_G2::Provider - the news provider (news agency)

=head1 SYNOPSIS

    my $apa = XML::NewsML_G2::Provider->new(name => 'APA', qcode => 'apa');

=head1 ATTRIBUTES

=over 4

=item notice

for an optional copyright notice

=back

=head1 AUTHOR

Philipp Gortan  C<< <philipp.gortan@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2013-2014, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
