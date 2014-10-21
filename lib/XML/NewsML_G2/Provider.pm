package XML::NewsML_G2::Provider;

# $Id: Provider.pm 46519 2013-05-31 15:38:08Z apatecgortan $

use Moose;
use namespace::autoclean;


has 'name', isa => 'Str', is => 'ro', required => 1;
has 'qcode', isa => 'Str', is => 'ro', required => 1;
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

=item name

=item qcode

=item notice

for an optional copyright notice

=back

=head1 AUTHOR

Philipp Gortan  C<< <philipp.gortan@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2013, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
