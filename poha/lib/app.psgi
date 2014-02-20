## Application config
use strict;
use warnings;
use Plack::Builder;
use Mojolicious::Commands;
use Container;
my $app = sub{
    Mojolicious::Commands->start_app('App::Poha');
};

builder {
    #enable "Plack::Middleware::ConditionalGET";
    #enable "Plack::Middleware::Static",
    #    path => qr/./, root => dirname(__FILE__) . '/static';
  $app;
};