#!/usr/bin/env perl

use warnings;
use strict;
use Test::More;

if (!$ENV{RELEASE_TESTING}) {
    plan skip_all =>
      "Set the environment variable RELEASE_TESTING to enable this test.";
}
elsif (!eval { require Module::Signature; 1 }) {
    plan skip_all =>
      "Next time around, consider installing Module::Signature, ".
      "so you can verify the integrity of this distribution.";
}
elsif ( !-e 'SIGNATURE' ) {
    plan skip_all => "SIGNATURE not found";
}
elsif ( -s 'SIGNATURE' == 0 ) {
    plan skip_all => "SIGNATURE file empty";
}
elsif (!eval { require Socket; Socket::inet_aton('pool.sks-keyservers.net') }) {
    plan skip_all => "Cannot connect to the keyserver to check module ".
                     "signature";
}
else {
    plan tests => 1;
}

my $ret = Module::Signature::verify();
SKIP: {
    skip "Module::Signature cannot verify", 1
      if $ret eq Module::Signature::CANNOT_VERIFY();

    cmp_ok $ret, '==', Module::Signature::SIGNATURE_OK(), "Valid signature";
}
