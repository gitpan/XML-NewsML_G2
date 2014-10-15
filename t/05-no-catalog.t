#!/usr/bin/env perl

# $Id: 05-no-catalog.t 55964 2014-09-03 09:32:05Z apatecgortan $

use utf8;
use Test::More;
use DateTime::Format::XSD;
use XML::LibXML;

use lib 't';
use NewsML_G2_Test_Helpers qw(create_ni_text validate_g2 :vars);

use warnings;
use strict;

use XML::NewsML_G2;

my $ni = create_ni_text(no_required_scheme => 1);

ok(my $writer = XML::NewsML_G2::Writer::News_Item->new(news_item => $ni), 'creating 2.18 writer');
ok(my $dom = $writer->create_dom(), '2.18 writer creates DOM');

ok(my $xpc = XML::LibXML::XPathContext->new($dom), 'create XPath context for DOM tree');
ok(!$xpc->find('@qcode'), 'no qcode is created in XML');

#diag($dom->serialize(1));

validate_g2($dom, '2.18');

done_testing;
