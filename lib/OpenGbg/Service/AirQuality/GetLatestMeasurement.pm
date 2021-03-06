use 5.14.0;

package OpenGbg::Service::AirQuality::GetLatestMeasurement;
$OpenGbg::Service::AirQuality::GetLatestMeasurement::VERSION = '0.1300';
use OpenGbg::Types -types;
use Kavorka;
use XML::Rabbit::Root;
use DateTime::Format::HTTP;
use MooseX::AttributeShortcuts;

has xml => (
    is => 'ro',
    isa => Str,
    required => 1,
);

add_xpath_namespace 'x' => 'TK.DevServer.Services.AirQualityService';

has_xpath_object measurement => '/x:Measurement' => 'OpenGbg::Service::AirQuality::Measurement';

finalize_class();

1;

__END__

=encoding utf-8

=head1 NAME

OpenGbg::Service::AirQuality::GetLatestMeasurement

=head1 SYNOPSIS

    my $service = OpenGbg->new->air_quality;
    my $response = $service->get_latest_measurement;

    print $response->measurement->to_text;

=head1 METHODS

=head2 measurement

Returns the L<OpenGbg::Service::AirQuality::Measurement> object given in the response  (usually less than an hour old).

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2014 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
