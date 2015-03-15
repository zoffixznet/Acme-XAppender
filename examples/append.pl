#!/usr/bin/env perl

use strict;
use warnings;

use lib qw(lib ../lib);

use Acme::XAppender;

@ARGV or die "Usage: $0 string_to_append_to\n";

print append(shift) . "\n";


