package XML::NewsML_G2::Types;

use Moose::Util::TypeConstraints;

use namespace::autoclean;

enum 'XML::NewsML_G2::Types::Nature', [qw(text picture graphics audio video composite)];

enum 'XML::NewsML_G2::Types::Group_Mode', [qw(bag sequential alternative)];

1;
__END__

=head1 NAME

XML::NewsML_G2::Types - various Moose attribute types used by NewsML_G2 classes

=head1 AUTHOR

Christian Eder  C<< <christian.eder@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2013, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
