package Acme::XAppender;

use strict;
use warnings;

# VERSION

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(append);

my @Ways = (
    sub { my $str = shift; "${str}x"; },
    sub { my $str = shift; $str . 'x'; },
    sub { my $str = shift; my @x = $str; "$x[0]x"; },
    sub { my $str = shift; join('x', $str, ''); },
    sub { my $str = shift; join 'x', $str, !!$[; },
    sub { my $str = shift; my $out; $out .= $_ for $str, 'x'; $out },
    sub { my $str = shift; $str =~ s/\z/x/r; },
    sub {
        my $str = shift;
        substr +(my $str1 = $str), length($str), 0, 'x';
        $str1
    },
    sub { my $str = shift; $str = reverse $str; reverse "x$str" },
);

sub append {
    my $str = shift;

    return $Ways[rand @Ways]->( $str );
}

'
A SQL query goes into a bar, walks up to two tables and asks,
    "Can I join you?"
';

__END__

=head1 NAME

Acme::XAppender - a full featured framework to append x to strings!

=head1 SYNOPSIS

    use Acme::XAppender;

    my $str = 'Boring string';

    my $awesome_str = append($str); # becomes 'Boring stringx'

=head1 DESCRIPTION

This module arose from a conversation on IRC
where a user asked a question

    <somiaj> I have a string $str and want to create a new string
        from it, $str1 = "$str x" -- but I don't want a space
        between the $str and x but can't figure out what
        character to put inbetween to get the replacement to happen.

Many suggestions poured in, until...

    <huf> perhaps we need an XAppender framework...

This module solves that dire need!

=head1 FUNCTIONS

=head2 C<append>

    my $str = 'Boring string';

    my $awesome_str = append($str); # becomes 'Boring stringx'

This amazing function takes your string as an argument and then
uses advanced algorithms to calculate the BEST way to append an 'x'
to your string, and then returns the result.

=head1 EXTENDING THE FRAMEWORK

TIMTOWTDI! You're welcome to propose an addition of a new
method for the amazing XAppender framework to consider when
choosing a way to append an 'x'. Submit an issue on GitHub!

=head1 REPOSITORY

Fork this module on GitHub:
L<https://github.com/zoffixznet/Acme-XAppender>

=head1 BUGS

To report bugs or request features, please use
L<https://github.com/zoffixznet/Acme-XAppender/issues>

If you can't access GitHub, you can email your request
to C<bug-acme-xappender at rt.cpan.org>

=head1 AUTHOR

Zoffix Znet <zoffix at cpan.org>
(L<http://zoffix.com/>)

=head1 LICENSE

You can use and distribute this module under the same terms as Perl itself.
See the C<LICENSE> file included in this distribution for complete
details.

=cut