package PohaApp::Controller;
use strict;
use warnings;
use Mojo::Base 'Mojolicious::Controller';

sub setup_routes {
  my ( $class, $route ) = @_;

  $route->get->to(
    namespace => $class,
    action    => 'home',
    message   => 'Welcome to Pratima\'s kitchen!'
  );
}

sub welcome {
  my $self = shift;
  $self->render( text => 'Welcome!!!' );
}

sub home {
  my $self = shift;
  $self->render('home');
}

1;
