package Log::Handler::Output::File::Stamper;
use strict;
use warnings;
use Carp qw/croak/;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    my $args  = shift || +{};

    bless $args, $class;
}


1;

__END__

=head1 NAME

Log::Handler::Output::File::Stamper - one line description


=head1 SYNOPSIS

    use Log::Handler::Output::File::Stamper;


=head1 DESCRIPTION

Log::Handler::Output::File::Stamper is


=head1 REPOSITORY

Log::Handler::Output::File::Stamper is hosted on github
<http://github.com/bayashi/Log-Handler-Output-File-Stamper>


=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<Other::Module>


=head1 LICENSE

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut
