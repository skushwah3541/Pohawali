package DataStore::Controller;
use strict;
use warnings;
use Mojo::Base 'Mojolicious::Controller';
use Poha::Schema;
use JSON qw(-convert_blessed_universally);

sub setup_routes {
  my ( $class, $route ) = @_;
  print STDERR "INSIDE DATASTORE\n";
  $route->get->to( namespace => $class, action => 'ping' );
  $route->get('recipe')->to( namespace => $class, action => 'recipe', );
  $route->get('products')->to( namespace => $class, action => 'products', );
}

sub ping {
  my $self = shift;
  $self->render( json =>
      { message => 'Congratulations! you are now connected to datastore.' } );
}

sub recipe {
  my $self    = shift;
  my $recipe  = Poha::Schema->resultset('Recipe');
  my @recipes = $recipe->all();
  $self->render( json => \@recipes );
}

sub products {
  my $self          = shift;
  my $model_product = Poha::Schema->resultset('Product');
  my @products      = map{{name => $_->name}}$model_product->all();
  
  $self->render( json => \@products );
}
1;
