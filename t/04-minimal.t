#! /usr/bin/perl

# $Id: 04-minimal.t 47068 2013-07-03 12:17:55Z apatecgortan $

use utf8;
use Test::More;
use XML::LibXML;
use XML::NewsML_G2;

use lib 't';
use NewsML_G2_Test_Helpers qw(validate_g2);

use warnings;
use strict;

ok(my $prov_apa = XML::NewsML_G2::Provider->new
  (qcode => 'apa', name => 'APA - Austria Presse Agentur'
  ), 'create Provider instance');

ok(my $ni = XML::NewsML_G2::News_Item->new
   (title => 'Saisonstart im Schweizerhaus: Run aufs Krügerl im Prater',
    language => 'de',
    provider => $prov_apa,
   ), 'create News Item instance');

ok($ni->add_paragraph('Die Saison im Wiener Prater hat am Donnerstagvormittag mit der Eröffnung des Schweizerhauses begonnen - diese findet traditionell jedes Jahr am 15. März statt.'), 'add_paragraph works');

my $writer = XML::NewsML_G2::Writer_2_12->new(news_item => $ni);
ok(my $dom = $writer->create_dom(), 'create DOM');

diag($dom->serialize(1));

validate_g2($dom, '2.12');

done_testing;
