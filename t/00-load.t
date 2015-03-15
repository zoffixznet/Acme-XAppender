#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 2;

BEGIN {
    use_ok('Exporter');
    use_ok('Acme::XAppender') || print "Bail out!\n";
}

diag( "Testing Acme::XAppender $Acme::XAppender::VERSION, Perl $], $^X" );
