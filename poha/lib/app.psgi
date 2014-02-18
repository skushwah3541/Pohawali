## Application config
use Plack::Builder;
use Container;
my $app = sub{
};

builder {
    #enable "Plack::Middleware::ConditionalGET";
    #enable "Plack::Middleware::Static",
    #    path => qr/./, root => dirname(__FILE__) . '/static';
  $app;
};