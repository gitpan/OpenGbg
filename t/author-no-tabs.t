
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.09

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/OpenGbg.pm',
    'lib/OpenGbg/Exception.pm',
    'lib/OpenGbg/Exception/BadResponseFromService.pm',
    'lib/OpenGbg/Handler.pm',
    'lib/OpenGbg/Service/AirQuality.pm',
    'lib/OpenGbg/Service/AirQuality/GetLatestMeasurement.pm',
    'lib/OpenGbg/Service/AirQuality/GetMeasurements.pm',
    'lib/OpenGbg/Service/AirQuality/Measurement.pm',
    'lib/OpenGbg/Service/AirQuality/Measurements.pm',
    'lib/OpenGbg/Service/Bridge.pm',
    'lib/OpenGbg/Service/Bridge/BridgeOpening.pm',
    'lib/OpenGbg/Service/Bridge/BridgeOpenings.pm',
    'lib/OpenGbg/Service/Bridge/GetIsCurrentlyOpen.pm',
    'lib/OpenGbg/Service/Bridge/GetOpenedStatus.pm',
    'lib/OpenGbg/Service/Getter.pm',
    'lib/OpenGbg/Service/StyrOchStall.pm',
    'lib/OpenGbg/Service/StyrOchStall/GetBikeStation.pm',
    'lib/OpenGbg/Service/StyrOchStall/GetBikeStations.pm',
    'lib/OpenGbg/Service/StyrOchStall/Station.pm',
    'lib/OpenGbg/Service/StyrOchStall/Stations.pm',
    'lib/OpenGbg/Service/TrafficCamera.pm',
    'lib/OpenGbg/Service/TrafficCamera/CameraDevice.pm',
    'lib/OpenGbg/Service/TrafficCamera/CameraDevices.pm',
    'lib/OpenGbg/Service/TrafficCamera/GetCameraImage.pm',
    'lib/OpenGbg/Service/TrafficCamera/GetTrafficCameras.pm',
    'lib/OpenGbg/Standard/Moops.pm',
    'lib/OpenGbg/Types.pm',
    't/01-styrochstall.t',
    't/02-air-quality.t',
    't/03-bridge.t',
    't/04-traffic-camera.t'
);

notabs_ok($_) foreach @files;
done_testing;
