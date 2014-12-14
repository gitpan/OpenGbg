use 5.14.0;

package OpenGbg::Service::Getter {
$OpenGbg::Service::Getter::VERSION = '0.1000';
use Moose::Role;
    use Kavorka;

    method getter($service_url, $service_name) {
        $service_url = sprintf $service_url, $self->handler->key;
        my $url = $self->handler->base . $self->service_base . $service_url;

        my $response = $self->handler->get($url);

        if(!$response->{'success'}) {
            BadResponseFromService->throw(service => ref $self.'::'.$service_name, url => $response->{'url'}, status => $response->{'status'}, reason => $response->{'reason'});
        }
        return $response->{'content'};
    }
}

1;
