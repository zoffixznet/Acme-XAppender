# NAME

Acme::XAppender - a full featured framework to append x to strings!

# SYNOPSIS

    use Acme::XAppender;

    my $str = 'Boring string';

    my $awesome_str = append($str); # becomes 'Boring stringx'

# DESCRIPTION

This module arose from a conversation on IRC
where a user asked a question

    <somiaj> I have a string $str and want to create a new string
        from it, $str1 = "$str x" -- but I don't want a space
        between the $str and x but can't figure out what
        character to put inbetween to get the replacement to happen.

Many suggestions poured in, until...

    <huf> perhaps we need an XAppender framework...

This module solves that dire need!

# FUNCTIONS

## `append`

    my $str = 'Boring string';

    my $awesome_str = append($str); # becomes 'Boring stringx'

This amazing function takes your string as an argument and then
uses advanced algorithms to calculate the BEST way to append an 'x'
to your string, and then returns the result.

# EXTENDING THE FRAMEWORK

TIMTOWTDI! You're welcome to propose an addition of a new
method for the amazing XAppender framework to consider when
choosing a way to append an 'x'. Submit an issue on GitHub!

# REPOSITORY

Fork this module on GitHub:
[https://github.com/zoffixznet/Acme-XAppender](https://github.com/zoffixznet/Acme-XAppender)

# BUGS

To report bugs or request features, please use
[https://github.com/zoffixznet/Acme-XAppender/issues](https://github.com/zoffixznet/Acme-XAppender/issues)

If you can't access GitHub, you can email your request
to `bug-acme-xappender at rt.cpan.org`

# AUTHOR

Zoffix Znet <zoffix at cpan.org>
([http://zoffix.com/](http://zoffix.com/))

# LICENSE

You can use and distribute this module under the same terms as Perl itself.
See the `LICENSE` file included in this distribution for complete
details.
