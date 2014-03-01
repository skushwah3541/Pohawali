package PohaApp::Controller;
use Mojo::Base 'Mojolicious::Controller';

sub setup_routes {
  my ( $class, $route ) = @_;
  $route->get->to(
    namespace => $class,
    action    => 'home',
    message   => 'Welcome Pohawali!'
  );

}

sub welcome {
  my $self = shift;
  $self->render( text => 'Welcome Pohawali!' );
}

sub home {
  my $self = shift;
  $self->render('home');
}

1;
