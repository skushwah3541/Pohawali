package PohaApp;

use Mojo::Base 'Mojolicious';
use PohaApp::Controller;
use File::Basename 'dirname';
use File::Spec::Functions 'catdir';

sub startup {
  my $self = shift;
  my $r    = $self->routes->route('/');

  # Switch to installable home directory
  $self->home->parse(dirname(__FILE__));

  # Switch to installable "templates" directory
  $self->renderer->paths->[0] = $self->home->rel_dir('Web/Templates');
  
    $self->static->paths(
    [
      '/home/sandeep/bootstrap-3.2.0-dist',
      '/home/sandeep/git/poha/poha/lib/Web',
    ]
  );
  
  
  
  PohaApp::Controller->setup_routes($r);
}

1;
