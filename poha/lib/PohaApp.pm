package PohaApp;

use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;
  $self->routes->route('/')->to(
    cb => sub {
      my $self = shift;
      $self->render( text => 'Hello Poha banane wali!' );
    }
  );
}

1;
