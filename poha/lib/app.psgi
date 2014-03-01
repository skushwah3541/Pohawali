## Application config
use strict;
use warnings;
use Plack::Builder;
use Mojolicious::Commands;

use File::Basename 'dirname';
use File::Spec::Functions qw(catdir splitdir);

# Source directory has precedence
my @base = (splitdir(dirname(__FILE__)), '..');
my $lib = join('/', @base, 'lib');
-e catdir(@base, 't') ? unshift(@INC, $lib) : push(@INC, $lib);

builder {
    #enable "Plack::Middleware::ConditionalGET";
    #enable "Plack::Middleware::Static",
    #    path => qr/./, root => dirname(__FILE__) . '/static';
  Mojolicious::Commands->start_app('PohaApp');
};