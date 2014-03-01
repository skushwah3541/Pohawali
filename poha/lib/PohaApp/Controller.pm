package PohaApp::Controller;
use Mojo::Base 'Mojolicious::Controller';

sub setup_routes{
  my ($class, $route) = @_;
  $route->get(action=>'welcome');
  
}

sub welcome{
  my $self = shift;
  $self->render('Welcome Pohawali!');
}
1;