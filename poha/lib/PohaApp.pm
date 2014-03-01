package PohaApp;

use Mojo::Base 'Mojolicious';
use PohaApp::Controller;

sub startup {
  my $self = shift;
  my $r    = $self->routes->route('/');
  $r->namespaces( [qw(PohaApp::Controller)] );
  PohaApp::Controller->setup_routes($r);  
}

1;
