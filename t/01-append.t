#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;
plan tests => 1;

use Acme::XAppender;

my $fail = 0;
for ( 1..5000 ) {
    $fail = 1 if append('str') ne 'strx';
}

is($fail, '0', "Did we fail any of the append() runs?");


