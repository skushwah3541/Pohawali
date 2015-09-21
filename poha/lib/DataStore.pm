package DataStore;
use strict;
use warnings;
use Mojo::Base 'Mojolicious';
use DataStore::Controller;

sub startup {
  my $self   = shift;
  my $routes = $self->routes;
  #push @{ $routes->namespaces }, 'DataStore::Controller';
  my $r = $routes->route('/');
  DataStore::Controller->setup_routes($r);
}
1;
