package Rubric::Entry::Formatter::Markdown;
our $VERSION = '0.01';

=head1 NAME

Rubric::Entry::Formatter::Markdown - format entries with Markdown (duh!)

=head1 VERSION

 $Id: /my/cs/projects/rubric/trunk/lib/Rubric/Entry/Formatter/Nil.pm 18100 2006-01-26T13:59:16.285684Z rjbs  $

=head1 DESCRIPTION

This formatter will use Markdown (specifically, Text::Markdown) to format
entries into HTML.

=cut

use strict;
use warnings;

use Text::Markdown;

=head1 METHODS

=cut

sub as_html {
  my ($class, $arg) = @_;
  return Text::Markdown::markdown($arg->{text});
}

sub as_text {
  my ($class, $arg) = @_;

  return $arg->{text};
}

=head1 TODO

=head1 AUTHOR

Ricardo SIGNES, C<< <rjbs@cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-rubric@rt.cpan.org>, or
through the web interface at L<http://rt.cpan.org>. I will be notified, and
then you'll automatically be notified of progress on your bug as I make
changes.

=head1 COPYRIGHT

Copyright 2005 Ricardo SIGNES.  This program is free software;  you can
redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;