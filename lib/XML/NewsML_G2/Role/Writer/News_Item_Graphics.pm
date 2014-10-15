package XML::NewsML_G2::Role::Writer::News_Item_Graphics;

# $Id: News_Item_Graphics.pm 57056 2014-10-15 16:26:09Z apatecgortan $

use Moose::Role;
use namespace::autoclean;

with 'XML::NewsML_G2::Role::Writer::News_Item_Picture';

1;
__END__

=head1 NAME

XML::NewsML_G2::Role::Writer::News_Item_Graphics - Role for writing news items of type 'graphics'

=head1 DESCRIPTION

This module serves as a role for all NewsML-G2 writer classes and get automatically applied when the according news item type is written

=head1 AUTHOR

Mario Paumann  C<< <mario.paumann@apa.at> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2014, APA-IT. All rights reserved.

See L<XML::NewsML_G2> for the license.
