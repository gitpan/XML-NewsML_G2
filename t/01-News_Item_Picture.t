#!/usr/bin/env perl

# $Id: 01-News_Item_Picture.t 57056 2014-10-15 16:26:09Z apatecgortan $

use utf8;
use Test::More;
use DateTime::Format::XSD;
use XML::LibXML;

use version;

use lib 't';
use NewsML_G2_Test_Helpers qw(create_ni_picture test_ni_picture :vars);

use warnings;
use strict;

use XML::NewsML_G2;

test_ni_picture(create_ni_picture());

done_testing;
