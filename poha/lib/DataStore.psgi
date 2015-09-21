## Application config
use strict;
use warnings;
use Plack::Builder;
use Mojolicious::Commands;

builder {
    #enable "Plack::Middleware::ConditionalGET";
    #enable "Plack::Middleware::Static",
    #    path => qr/./, root => dirname(__FILE__) . '/static';
  print STDERR "START DataStore\n";
  Mojolicious::Commands->start_app('DataStore');
};